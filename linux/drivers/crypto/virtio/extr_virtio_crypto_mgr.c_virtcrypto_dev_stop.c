
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto {int dummy; } ;


 int virtio_crypto_algs_unregister (struct virtio_crypto*) ;

void virtcrypto_dev_stop(struct virtio_crypto *vcrypto)
{
 virtio_crypto_algs_unregister(vcrypto);
}
