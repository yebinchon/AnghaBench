
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {int num_rcv_contexts; } ;
struct hfi1_ctxtdata {int dummy; } ;


 int HFI1_RCVCTRL_CTXT_DIS ;
 int RCV_CTRL_RCV_PORT_ENABLE_SMASK ;
 int clear_rcvctrl (struct hfi1_devdata*,int ) ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,int) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int hfi1_rcvctrl (struct hfi1_devdata*,int ,struct hfi1_ctxtdata*) ;

__attribute__((used)) static void rxe_freeze(struct hfi1_devdata *dd)
{
 int i;
 struct hfi1_ctxtdata *rcd;


 clear_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);


 for (i = 0; i < dd->num_rcv_contexts; i++) {
  rcd = hfi1_rcd_get_by_index(dd, i);
  hfi1_rcvctrl(dd, HFI1_RCVCTRL_CTXT_DIS, rcd);
  hfi1_rcd_put(rcd);
 }
}
