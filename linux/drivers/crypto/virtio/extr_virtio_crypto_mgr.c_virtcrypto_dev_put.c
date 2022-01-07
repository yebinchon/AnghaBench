
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto {int owner; int ref_count; } ;


 scalar_t__ atomic_sub_return (int,int *) ;
 int module_put (int ) ;

void virtcrypto_dev_put(struct virtio_crypto *vcrypto_dev)
{
 if (atomic_sub_return(1, &vcrypto_dev->ref_count) == 0)
  module_put(vcrypto_dev->owner);
}
