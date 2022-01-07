
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int uctxt_lock; } ;
struct hfi1_ctxtdata {int wait; int urgent; int event_flags; int in_use_ctxts; struct hfi1_devdata* dd; } ;


 int HFI1_CTXT_WAITING_RCV ;
 int HFI1_CTXT_WAITING_URG ;
 int HFI1_MAX_SHARED_CTXTS ;
 int HFI1_RCVCTRL_INTRAVAIL_DIS ;
 scalar_t__ bitmap_empty (int ,int ) ;
 int hfi1_rcvctrl (struct hfi1_devdata*,int ,struct hfi1_ctxtdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int wake_up_interruptible (int *) ;

void handle_user_interrupt(struct hfi1_ctxtdata *rcd)
{
 struct hfi1_devdata *dd = rcd->dd;
 unsigned long flags;

 spin_lock_irqsave(&dd->uctxt_lock, flags);
 if (bitmap_empty(rcd->in_use_ctxts, HFI1_MAX_SHARED_CTXTS))
  goto done;

 if (test_and_clear_bit(HFI1_CTXT_WAITING_RCV, &rcd->event_flags)) {
  wake_up_interruptible(&rcd->wait);
  hfi1_rcvctrl(dd, HFI1_RCVCTRL_INTRAVAIL_DIS, rcd);
 } else if (test_and_clear_bit(HFI1_CTXT_WAITING_URG,
       &rcd->event_flags)) {
  rcd->urgent++;
  wake_up_interruptible(&rcd->wait);
 }
done:
 spin_unlock_irqrestore(&dd->uctxt_lock, flags);
}
