
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto {int dummy; } ;


 int EFAULT ;
 int pr_err (char*) ;
 scalar_t__ virtio_crypto_algs_register (struct virtio_crypto*) ;

int virtcrypto_dev_start(struct virtio_crypto *vcrypto)
{
 if (virtio_crypto_algs_register(vcrypto)) {
  pr_err("virtio_crypto: Failed to register crypto algs\n");
  return -EFAULT;
 }

 return 0;
}
