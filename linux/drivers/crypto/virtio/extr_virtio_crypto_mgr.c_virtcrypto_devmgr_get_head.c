
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 struct list_head virtio_crypto_table ;

struct list_head *virtcrypto_devmgr_get_head(void)
{
 return &virtio_crypto_table;
}
