
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto {int status; } ;


 int VIRTIO_CRYPTO_S_HW_READY ;

int virtcrypto_dev_started(struct virtio_crypto *vcrypto_dev)
{
 return (vcrypto_dev->status & VIRTIO_CRYPTO_S_HW_READY);
}
