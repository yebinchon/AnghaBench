
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct hfi1_devdata {size_t num_rcv_contexts; int uctxt_lock; struct hfi1_ctxtdata** rcd; } ;
struct hfi1_ctxtdata {size_t ctxt; } ;


 int EBUSY ;
 int hfi1_rcd_init (struct hfi1_ctxtdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int allocate_rcd_index(struct hfi1_devdata *dd,
         struct hfi1_ctxtdata *rcd, u16 *index)
{
 unsigned long flags;
 u16 ctxt;

 spin_lock_irqsave(&dd->uctxt_lock, flags);
 for (ctxt = 0; ctxt < dd->num_rcv_contexts; ctxt++)
  if (!dd->rcd[ctxt])
   break;

 if (ctxt < dd->num_rcv_contexts) {
  rcd->ctxt = ctxt;
  dd->rcd[ctxt] = rcd;
  hfi1_rcd_init(rcd);
 }
 spin_unlock_irqrestore(&dd->uctxt_lock, flags);

 if (ctxt >= dd->num_rcv_contexts)
  return -EBUSY;

 *index = ctxt;

 return 0;
}
