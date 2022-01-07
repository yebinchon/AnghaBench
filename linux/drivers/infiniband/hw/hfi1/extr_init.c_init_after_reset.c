
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfi1_devdata {int num_rcv_contexts; int num_send_contexts; TYPE_1__* send_contexts; } ;
struct hfi1_ctxtdata {int dummy; } ;
struct TYPE_2__ {int sc; } ;


 int HFI1_RCVCTRL_CTXT_DIS ;
 int HFI1_RCVCTRL_INTRAVAIL_DIS ;
 int HFI1_RCVCTRL_TAILUPD_DIS ;
 int PSC_GLOBAL_DISABLE ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,int) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int hfi1_rcvctrl (struct hfi1_devdata*,int,struct hfi1_ctxtdata*) ;
 int pio_send_control (struct hfi1_devdata*,int ) ;
 int sc_disable (int ) ;

__attribute__((used)) static int init_after_reset(struct hfi1_devdata *dd)
{
 int i;
 struct hfi1_ctxtdata *rcd;





 for (i = 0; i < dd->num_rcv_contexts; i++) {
  rcd = hfi1_rcd_get_by_index(dd, i);
  hfi1_rcvctrl(dd, HFI1_RCVCTRL_CTXT_DIS |
        HFI1_RCVCTRL_INTRAVAIL_DIS |
        HFI1_RCVCTRL_TAILUPD_DIS, rcd);
  hfi1_rcd_put(rcd);
 }
 pio_send_control(dd, PSC_GLOBAL_DISABLE);
 for (i = 0; i < dd->num_send_contexts; i++)
  sc_disable(dd->send_contexts[i].sc);

 return 0;
}
