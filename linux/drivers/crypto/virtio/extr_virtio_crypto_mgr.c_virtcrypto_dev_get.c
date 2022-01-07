
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto {int owner; int ref_count; } ;


 int EFAULT ;
 int atomic_add_return (int,int *) ;
 int try_module_get (int ) ;

int virtcrypto_dev_get(struct virtio_crypto *vcrypto_dev)
{
 if (atomic_add_return(1, &vcrypto_dev->ref_count) == 1)
  if (!try_module_get(vcrypto_dev->owner))
   return -EFAULT;
 return 0;
}
