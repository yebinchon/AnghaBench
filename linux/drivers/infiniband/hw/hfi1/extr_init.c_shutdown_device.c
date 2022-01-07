
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_pportdata {int* statusp; int * link_wq; int * hfi1_wq; scalar_t__ linkup; } ;
struct hfi1_devdata {int flags; unsigned int num_pports; int num_rcv_contexts; int num_send_contexts; TYPE_1__* send_contexts; struct hfi1_pportdata* pport; } ;
struct hfi1_ctxtdata {int dummy; } ;
struct TYPE_2__ {int sc; } ;


 int HFI1_INITTED ;
 int HFI1_RCVCTRL_CTXT_DIS ;
 int HFI1_RCVCTRL_INTRAVAIL_DIS ;
 int HFI1_RCVCTRL_ONE_PKT_EGR_DIS ;
 int HFI1_RCVCTRL_PKEY_DIS ;
 int HFI1_RCVCTRL_TAILUPD_DIS ;
 int HFI1_SHUTDOWN ;
 int HFI1_STATUS_IB_CONF ;
 int HFI1_STATUS_IB_READY ;
 int IS_FIRST_SOURCE ;
 int IS_LAST_SOURCE ;
 int PSC_GLOBAL_DISABLE ;
 int destroy_workqueue (int *) ;
 int hfi1_quiet_serdes (struct hfi1_pportdata*) ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,int) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int hfi1_rcvctrl (struct hfi1_devdata*,int,struct hfi1_ctxtdata*) ;
 int msix_clean_up_interrupts (struct hfi1_devdata*) ;
 int pio_send_control (struct hfi1_devdata*,int ) ;
 int sc_disable (int ) ;
 int sc_flush (int ) ;
 int sdma_exit (struct hfi1_devdata*) ;
 int set_intr_bits (struct hfi1_devdata*,int ,int ,int) ;
 int shutdown_led_override (struct hfi1_pportdata*) ;
 int udelay (int) ;

__attribute__((used)) static void shutdown_device(struct hfi1_devdata *dd)
{
 struct hfi1_pportdata *ppd;
 struct hfi1_ctxtdata *rcd;
 unsigned pidx;
 int i;

 if (dd->flags & HFI1_SHUTDOWN)
  return;
 dd->flags |= HFI1_SHUTDOWN;

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;

  ppd->linkup = 0;
  if (ppd->statusp)
   *ppd->statusp &= ~(HFI1_STATUS_IB_CONF |
        HFI1_STATUS_IB_READY);
 }
 dd->flags &= ~HFI1_INITTED;


 set_intr_bits(dd, IS_FIRST_SOURCE, IS_LAST_SOURCE, 0);
 msix_clean_up_interrupts(dd);

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  for (i = 0; i < dd->num_rcv_contexts; i++) {
   rcd = hfi1_rcd_get_by_index(dd, i);
   hfi1_rcvctrl(dd, HFI1_RCVCTRL_TAILUPD_DIS |
         HFI1_RCVCTRL_CTXT_DIS |
         HFI1_RCVCTRL_INTRAVAIL_DIS |
         HFI1_RCVCTRL_PKEY_DIS |
         HFI1_RCVCTRL_ONE_PKT_EGR_DIS, rcd);
   hfi1_rcd_put(rcd);
  }




  for (i = 0; i < dd->num_send_contexts; i++)
   sc_flush(dd->send_contexts[i].sc);
 }





 udelay(20);

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;


  for (i = 0; i < dd->num_send_contexts; i++)
   sc_disable(dd->send_contexts[i].sc);

  pio_send_control(dd, PSC_GLOBAL_DISABLE);

  shutdown_led_override(ppd);





  hfi1_quiet_serdes(ppd);

  if (ppd->hfi1_wq) {
   destroy_workqueue(ppd->hfi1_wq);
   ppd->hfi1_wq = ((void*)0);
  }
  if (ppd->link_wq) {
   destroy_workqueue(ppd->link_wq);
   ppd->link_wq = ((void*)0);
  }
 }
 sdma_exit(dd);
}
