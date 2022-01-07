
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hfi1_devdata {int uctxt_lock; struct hfi1_ctxtdata** rcd; } ;
struct hfi1_ctxtdata {int dummy; } ;


 int hfi1_rcd_get (struct hfi1_ctxtdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

struct hfi1_ctxtdata *hfi1_rcd_get_by_index(struct hfi1_devdata *dd, u16 ctxt)
{
 unsigned long flags;
 struct hfi1_ctxtdata *rcd = ((void*)0);

 spin_lock_irqsave(&dd->uctxt_lock, flags);
 if (dd->rcd[ctxt]) {
  rcd = dd->rcd[ctxt];
  if (!hfi1_rcd_get(rcd))
   rcd = ((void*)0);
 }
 spin_unlock_irqrestore(&dd->uctxt_lock, flags);

 return rcd;
}
