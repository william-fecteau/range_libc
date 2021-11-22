# making sure gcc 8 is installed
sudo apt install -y gcc-8 g++-8

# update alternatives
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-8 8
update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-8 8

# linking cudart library
sudo ln -s /usr/local/cuda-10.0/lib64/libcudart.so /usr/local/cuda/lib64/libcudart.so

sudo WITH_CUDA=ON python3 setup.py install