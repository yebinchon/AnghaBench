
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfi1_devdata {scalar_t__ first_dyn_alloc_ctxt; int aspm_enabled; int aspm_supported; int aspm_lock; } ;
struct hfi1_ctxtdata {int dummy; } ;


 int aspm_ctx_init (struct hfi1_ctxtdata*) ;
 int aspm_enable_all (struct hfi1_devdata*) ;
 int aspm_hw_disable_l1 (struct hfi1_devdata*) ;
 int aspm_hw_l1_supported (struct hfi1_devdata*) ;
 int aspm_hw_set_l1_ent_latency (struct hfi1_devdata*) ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int spin_lock_init (int *) ;

void aspm_init(struct hfi1_devdata *dd)
{
 struct hfi1_ctxtdata *rcd;
 u16 i;

 spin_lock_init(&dd->aspm_lock);
 dd->aspm_supported = aspm_hw_l1_supported(dd);

 for (i = 0; i < dd->first_dyn_alloc_ctxt; i++) {
  rcd = hfi1_rcd_get_by_index(dd, i);
  if (rcd)
   aspm_ctx_init(rcd);
  hfi1_rcd_put(rcd);
 }


 aspm_hw_set_l1_ent_latency(dd);
 dd->aspm_enabled = 0;
 aspm_hw_disable_l1(dd);


 aspm_enable_all(dd);
}
