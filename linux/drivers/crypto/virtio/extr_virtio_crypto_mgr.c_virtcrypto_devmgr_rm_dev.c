
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_crypto {int list; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int num_devices ;
 int table_lock ;

void virtcrypto_devmgr_rm_dev(struct virtio_crypto *vcrypto_dev)
{
 mutex_lock(&table_lock);
 list_del(&vcrypto_dev->list);
 num_devices--;
 mutex_unlock(&table_lock);
}
