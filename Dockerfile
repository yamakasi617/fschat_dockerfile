FROM nvidia/cuda:11.8.0-runtime-ubuntu22.04

RUN apt-get update -y && apt-get install -y python3.9 python3.9-distutils curl vim net-tools
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3.9 get-pip.py
RUN pip3 install fschat
RUN pip3 install fschat[model_worker,webui] pydantic==1.10.13
