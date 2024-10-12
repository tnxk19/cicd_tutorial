FROM ubuntu:latest
MAINTAINER Khanh Tran "khanhb2111985@studeny.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential python3-venv
ADD . /flask_app
WORKDIR /flask_app
RUN python3 -m venv venv
RUN . ./venv/bin/activate &&  pip install -r requirements.txt
ENTRYPOINT ["/flask_app/venv/bin/python3"]
CMD ["flask_docker.py"]

