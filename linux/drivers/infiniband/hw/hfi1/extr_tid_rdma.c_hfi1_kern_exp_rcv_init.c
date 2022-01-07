
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_ctxtdata {scalar_t__ jkey; int dd; } ;


 int BUILD_BUG_ON (int) ;
 scalar_t__ HFI1_KERNEL_MAX_JKEY ;
 scalar_t__ HFI1_KERNEL_MIN_JKEY ;
 scalar_t__ TID_RDMA_JKEY ;
 int hfi1_alloc_ctxt_rcv_groups (struct hfi1_ctxtdata*) ;
 int hfi1_set_ctxt_jkey (int ,struct hfi1_ctxtdata*,scalar_t__) ;

int hfi1_kern_exp_rcv_init(struct hfi1_ctxtdata *rcd, int reinit)
{
 if (reinit)
  return 0;

 BUILD_BUG_ON(TID_RDMA_JKEY < HFI1_KERNEL_MIN_JKEY);
 BUILD_BUG_ON(TID_RDMA_JKEY > HFI1_KERNEL_MAX_JKEY);
 rcd->jkey = TID_RDMA_JKEY;
 hfi1_set_ctxt_jkey(rcd->dd, rcd, rcd->jkey);
 return hfi1_alloc_ctxt_rcv_groups(rcd);
}
