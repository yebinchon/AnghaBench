
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {int dd; int flags; int jkey; scalar_t__ rcvhdrtail_kvaddr; scalar_t__ urgent_poll; scalar_t__ urgent; } ;


 int DMA_RTAIL ;
 int HDRSUPP ;
 scalar_t__ HFI1_CAP_UGET_MASK (int ,int ) ;
 unsigned int HFI1_RCVCTRL_CTXT_ENB ;
 unsigned int HFI1_RCVCTRL_NO_EGR_DROP_ENB ;
 unsigned int HFI1_RCVCTRL_NO_RHQ_DROP_ENB ;
 unsigned int HFI1_RCVCTRL_ONE_PKT_EGR_ENB ;
 unsigned int HFI1_RCVCTRL_TAILUPD_DIS ;
 unsigned int HFI1_RCVCTRL_TAILUPD_ENB ;
 unsigned int HFI1_RCVCTRL_TIDFLOW_ENB ;
 unsigned int HFI1_RCVCTRL_URGENT_ENB ;
 int MULTI_PKT_EGR ;
 int NODROP_EGR_FULL ;
 int NODROP_RHQ_FULL ;
 int clear_rcvhdrtail (struct hfi1_ctxtdata*) ;
 int hfi1_rcvctrl (int ,unsigned int,struct hfi1_ctxtdata*) ;
 int hfi1_set_ctxt_jkey (int ,struct hfi1_ctxtdata*,int ) ;

__attribute__((used)) static void user_init(struct hfi1_ctxtdata *uctxt)
{
 unsigned int rcvctrl_ops = 0;


 uctxt->urgent = 0;
 uctxt->urgent_poll = 0;
 if (uctxt->rcvhdrtail_kvaddr)
  clear_rcvhdrtail(uctxt);


 hfi1_set_ctxt_jkey(uctxt->dd, uctxt, uctxt->jkey);

 rcvctrl_ops = HFI1_RCVCTRL_CTXT_ENB;
 rcvctrl_ops |= HFI1_RCVCTRL_URGENT_ENB;
 if (HFI1_CAP_UGET_MASK(uctxt->flags, HDRSUPP))
  rcvctrl_ops |= HFI1_RCVCTRL_TIDFLOW_ENB;





 if (!HFI1_CAP_UGET_MASK(uctxt->flags, MULTI_PKT_EGR))
  rcvctrl_ops |= HFI1_RCVCTRL_ONE_PKT_EGR_ENB;
 if (HFI1_CAP_UGET_MASK(uctxt->flags, NODROP_EGR_FULL))
  rcvctrl_ops |= HFI1_RCVCTRL_NO_EGR_DROP_ENB;
 if (HFI1_CAP_UGET_MASK(uctxt->flags, NODROP_RHQ_FULL))
  rcvctrl_ops |= HFI1_RCVCTRL_NO_RHQ_DROP_ENB;






 if (HFI1_CAP_UGET_MASK(uctxt->flags, DMA_RTAIL))
  rcvctrl_ops |= HFI1_RCVCTRL_TAILUPD_ENB;
 else
  rcvctrl_ops |= HFI1_RCVCTRL_TAILUPD_DIS;
 hfi1_rcvctrl(uctxt->dd, rcvctrl_ops, uctxt);
}
