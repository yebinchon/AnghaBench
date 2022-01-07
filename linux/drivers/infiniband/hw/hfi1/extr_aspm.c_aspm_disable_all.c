
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct hfi1_devdata {scalar_t__ first_dyn_alloc_ctxt; int aspm_disabled_cnt; } ;
struct hfi1_ctxtdata {int aspm_intr_enable; int aspm_lock; int aspm_timer; } ;


 int aspm_disable (struct hfi1_devdata*) ;
 int atomic_set (int *,int ) ;
 int del_timer_sync (int *) ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void aspm_disable_all(struct hfi1_devdata *dd)
{
 struct hfi1_ctxtdata *rcd;
 unsigned long flags;
 u16 i;

 for (i = 0; i < dd->first_dyn_alloc_ctxt; i++) {
  rcd = hfi1_rcd_get_by_index(dd, i);
  if (rcd) {
   del_timer_sync(&rcd->aspm_timer);
   spin_lock_irqsave(&rcd->aspm_lock, flags);
   rcd->aspm_intr_enable = 0;
   spin_unlock_irqrestore(&rcd->aspm_lock, flags);
   hfi1_rcd_put(rcd);
  }
 }

 aspm_disable(dd);
 atomic_set(&dd->aspm_disabled_cnt, 0);
}
