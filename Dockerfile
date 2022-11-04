FROM jupyter/tensorflow-notebook

USER root

RUN apt-get update && \
    apt-get install -y ssh && \
    rm -rf /var/lib/apt/lists/*

USER jovyan

RUN conda config --set channel_priority false && \
    conda update --all --yes && \
    conda install -c menpo opencv pygraphviz vobject
