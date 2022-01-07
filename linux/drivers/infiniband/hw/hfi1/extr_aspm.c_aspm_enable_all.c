
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfi1_devdata {scalar_t__ first_dyn_alloc_ctxt; } ;
struct hfi1_ctxtdata {int aspm_intr_enable; int aspm_enabled; int aspm_lock; } ;


 scalar_t__ ASPM_MODE_DYNAMIC ;
 int aspm_enable (struct hfi1_devdata*) ;
 scalar_t__ aspm_mode ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void aspm_enable_all(struct hfi1_devdata *dd)
{
 struct hfi1_ctxtdata *rcd;
 unsigned long flags;
 u16 i;

 aspm_enable(dd);

 if (aspm_mode != ASPM_MODE_DYNAMIC)
  return;

 for (i = 0; i < dd->first_dyn_alloc_ctxt; i++) {
  rcd = hfi1_rcd_get_by_index(dd, i);
  if (rcd) {
   spin_lock_irqsave(&rcd->aspm_lock, flags);
   rcd->aspm_intr_enable = 1;
   rcd->aspm_enabled = 1;
   spin_unlock_irqrestore(&rcd->aspm_lock, flags);
   hfi1_rcd_put(rcd);
  }
 }
}
