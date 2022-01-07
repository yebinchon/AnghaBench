
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_txreq {int dummy; } ;
struct TYPE_2__ {int txreq_cache; } ;
struct hfi1_devdata {int unit; TYPE_1__ vnic; } ;
typedef int buf ;


 int ENOMEM ;
 int HFI1_VNIC_TXREQ_NAME_LEN ;
 int SLAB_HWCACHE_ALIGN ;
 int kmem_cache_create (char*,int,int ,int ,int *) ;
 int snprintf (char*,int,char*,int) ;

int hfi1_vnic_txreq_init(struct hfi1_devdata *dd)
{
 char buf[HFI1_VNIC_TXREQ_NAME_LEN];

 snprintf(buf, sizeof(buf), "hfi1_%u_vnic_txreq_cache", dd->unit);
 dd->vnic.txreq_cache = kmem_cache_create(buf,
       sizeof(struct vnic_txreq),
       0, SLAB_HWCACHE_ALIGN,
       ((void*)0));
 if (!dd->vnic.txreq_cache)
  return -ENOMEM;
 return 0;
}
