
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_context {int flags; int halt_wait; } ;
struct hfi1_devdata {int flags; int event_queue; } ;
struct hfi1_ctxtdata {struct send_context* sc; struct hfi1_devdata* dd; } ;


 int EINVAL ;
 int ENODEV ;
 int ENOLCK ;
 int HFI1_FORCED_FREEZE ;
 int HFI1_FROZEN ;
 int HFI1_RCVCTRL_CTXT_ENB ;
 int READ_ONCE (int) ;
 int SCF_FROZEN ;
 int SCF_HALTED ;
 int SEND_CTXT_HALT_TIMEOUT ;
 int hfi1_rcvctrl (struct hfi1_devdata*,int ,struct hfi1_ctxtdata*) ;
 int msecs_to_jiffies (int ) ;
 int sc_disable (struct send_context*) ;
 int sc_enable (struct send_context*) ;
 int sc_restart (struct send_context*) ;
 int sc_return_credits (struct send_context*) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int ctxt_reset(struct hfi1_ctxtdata *uctxt)
{
 struct send_context *sc;
 struct hfi1_devdata *dd;
 int ret = 0;

 if (!uctxt || !uctxt->dd || !uctxt->sc)
  return -EINVAL;







 dd = uctxt->dd;
 sc = uctxt->sc;





 wait_event_interruptible_timeout(
  sc->halt_wait, (sc->flags & SCF_HALTED),
  msecs_to_jiffies(SEND_CTXT_HALT_TIMEOUT));
 if (!(sc->flags & SCF_HALTED))
  return -ENOLCK;





 if (sc->flags & SCF_FROZEN) {
  wait_event_interruptible_timeout(
   dd->event_queue,
   !(READ_ONCE(dd->flags) & HFI1_FROZEN),
   msecs_to_jiffies(SEND_CTXT_HALT_TIMEOUT));
  if (dd->flags & HFI1_FROZEN)
   return -ENOLCK;

  if (dd->flags & HFI1_FORCED_FREEZE)




   return -ENODEV;

  sc_disable(sc);
  ret = sc_enable(sc);
  hfi1_rcvctrl(dd, HFI1_RCVCTRL_CTXT_ENB, uctxt);
 } else {
  ret = sc_restart(sc);
 }
 if (!ret)
  sc_return_credits(sc);

 return ret;
}
