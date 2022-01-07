
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto {int ref_count; } ;


 scalar_t__ atomic_read (int *) ;

int virtcrypto_dev_in_use(struct virtio_crypto *vcrypto_dev)
{
 return atomic_read(&vcrypto_dev->ref_count) != 0;
}
