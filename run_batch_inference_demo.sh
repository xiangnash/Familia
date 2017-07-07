#!/bin/bash
export LD_LIBRARY_PATH=./third_party/lib:$LD_LIBRARY_PATH

cd model
sh download_model.sh
cd ..

./batch_inference_demo --model_dir="./model/news" --conf_file="lda.conf" --corpus_file="./data/corpus.txt" --result_file="./data/result.txt"
