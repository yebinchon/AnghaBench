
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct hfi1_devdata {scalar_t__ num_rcv_contexts; scalar_t__ first_dyn_alloc_ctxt; } ;
struct hfi1_ctxtdata {scalar_t__ rcvhdrtail_kvaddr; int is_vnic; } ;


 int HFI1_RCVCTRL_CTXT_ENB ;
 int HFI1_RCVCTRL_TAILUPD_DIS ;
 int HFI1_RCVCTRL_TAILUPD_ENB ;
 int RCV_CTRL_RCV_PORT_ENABLE_SMASK ;
 int add_rcvctrl (struct hfi1_devdata*,int ) ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int hfi1_rcvctrl (struct hfi1_devdata*,int ,struct hfi1_ctxtdata*) ;

__attribute__((used)) static void rxe_kernel_unfreeze(struct hfi1_devdata *dd)
{
 u32 rcvmask;
 u16 i;
 struct hfi1_ctxtdata *rcd;


 for (i = 0; i < dd->num_rcv_contexts; i++) {
  rcd = hfi1_rcd_get_by_index(dd, i);


  if (!rcd ||
      (i >= dd->first_dyn_alloc_ctxt && !rcd->is_vnic)) {
   hfi1_rcd_put(rcd);
   continue;
  }
  rcvmask = HFI1_RCVCTRL_CTXT_ENB;

  rcvmask |= rcd->rcvhdrtail_kvaddr ?
   HFI1_RCVCTRL_TAILUPD_ENB : HFI1_RCVCTRL_TAILUPD_DIS;
  hfi1_rcvctrl(dd, rcvmask, rcd);
  hfi1_rcd_put(rcd);
 }


 add_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
}
