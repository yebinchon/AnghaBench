
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * rc_qacks; void* rc_delayed_comp; int * rc_acks; } ;
struct TYPE_4__ {TYPE_1__ rvp; } ;
struct hfi1_pportdata {TYPE_2__ ibport_data; } ;
struct hfi1_devdata {int num_pports; } ;


 int ENOMEM ;
 void* alloc_percpu (int ) ;
 int u64 ;

__attribute__((used)) static inline int init_cpu_counters(struct hfi1_devdata *dd)
{
 struct hfi1_pportdata *ppd;
 int i;

 ppd = (struct hfi1_pportdata *)(dd + 1);
 for (i = 0; i < dd->num_pports; i++, ppd++) {
  ppd->ibport_data.rvp.rc_acks = ((void*)0);
  ppd->ibport_data.rvp.rc_qacks = ((void*)0);
  ppd->ibport_data.rvp.rc_acks = alloc_percpu(u64);
  ppd->ibport_data.rvp.rc_qacks = alloc_percpu(u64);
  ppd->ibport_data.rvp.rc_delayed_comp = alloc_percpu(u64);
  if (!ppd->ibport_data.rvp.rc_acks ||
      !ppd->ibport_data.rvp.rc_delayed_comp ||
      !ppd->ibport_data.rvp.rc_qacks)
   return -ENOMEM;
 }

 return 0;
}
