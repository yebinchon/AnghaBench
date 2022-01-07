
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * txreq_cache; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;


 int kmem_cache_destroy (int *) ;

void hfi1_vnic_txreq_deinit(struct hfi1_devdata *dd)
{
 kmem_cache_destroy(dd->vnic.txreq_cache);
 dd->vnic.txreq_cache = ((void*)0);
}
