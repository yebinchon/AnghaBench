
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct hfi1_devdata {scalar_t__ first_dyn_alloc_ctxt; } ;
struct hfi1_ctxtdata {int sc; int flags; } ;


 int DMA_RTAIL ;
 scalar_t__ HFI1_CAP_IS_KSET (int ) ;
 scalar_t__ HFI1_CAP_KGET_MASK (int ,int ) ;
 int HFI1_RCVCTRL_CTXT_ENB ;
 int HFI1_RCVCTRL_INTRAVAIL_ENB ;
 int HFI1_RCVCTRL_NO_EGR_DROP_ENB ;
 int HFI1_RCVCTRL_NO_RHQ_DROP_ENB ;
 int HFI1_RCVCTRL_ONE_PKT_EGR_ENB ;
 int HFI1_RCVCTRL_TAILUPD_DIS ;
 int HFI1_RCVCTRL_TAILUPD_ENB ;
 int HFI1_RCVCTRL_TIDFLOW_ENB ;
 int MULTI_PKT_EGR ;
 int NODROP_EGR_FULL ;
 int NODROP_RHQ_FULL ;
 int PSC_GLOBAL_ENABLE ;
 int TID_RDMA ;
 struct hfi1_ctxtdata* hfi1_rcd_get_by_index (struct hfi1_devdata*,scalar_t__) ;
 int hfi1_rcd_put (struct hfi1_ctxtdata*) ;
 int hfi1_rcvctrl (struct hfi1_devdata*,int,struct hfi1_ctxtdata*) ;
 int pio_send_control (struct hfi1_devdata*,int ) ;
 int sc_enable (int ) ;

__attribute__((used)) static void enable_chip(struct hfi1_devdata *dd)
{
 struct hfi1_ctxtdata *rcd;
 u32 rcvmask;
 u16 i;


 pio_send_control(dd, PSC_GLOBAL_ENABLE);





 for (i = 0; i < dd->first_dyn_alloc_ctxt; ++i) {
  rcd = hfi1_rcd_get_by_index(dd, i);
  if (!rcd)
   continue;
  rcvmask = HFI1_RCVCTRL_CTXT_ENB | HFI1_RCVCTRL_INTRAVAIL_ENB;
  rcvmask |= HFI1_CAP_KGET_MASK(rcd->flags, DMA_RTAIL) ?
   HFI1_RCVCTRL_TAILUPD_ENB : HFI1_RCVCTRL_TAILUPD_DIS;
  if (!HFI1_CAP_KGET_MASK(rcd->flags, MULTI_PKT_EGR))
   rcvmask |= HFI1_RCVCTRL_ONE_PKT_EGR_ENB;
  if (HFI1_CAP_KGET_MASK(rcd->flags, NODROP_RHQ_FULL))
   rcvmask |= HFI1_RCVCTRL_NO_RHQ_DROP_ENB;
  if (HFI1_CAP_KGET_MASK(rcd->flags, NODROP_EGR_FULL))
   rcvmask |= HFI1_RCVCTRL_NO_EGR_DROP_ENB;
  if (HFI1_CAP_IS_KSET(TID_RDMA))
   rcvmask |= HFI1_RCVCTRL_TIDFLOW_ENB;
  hfi1_rcvctrl(dd, rcvmask, rcd);
  sc_enable(rcd->sc);
  hfi1_rcd_put(rcd);
 }
}
