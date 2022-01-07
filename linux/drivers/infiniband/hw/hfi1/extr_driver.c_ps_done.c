
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ps_mdata {scalar_t__ ps_head; scalar_t__ ps_tail; scalar_t__ ps_seq; } ;
struct hfi1_ctxtdata {int flags; } ;


 int DMA_RTAIL ;
 scalar_t__ HFI1_CAP_KGET_MASK (int ,int ) ;
 scalar_t__ rhf_rcv_seq (int ) ;

__attribute__((used)) static inline int ps_done(struct ps_mdata *mdata, u64 rhf,
     struct hfi1_ctxtdata *rcd)
{
 if (HFI1_CAP_KGET_MASK(rcd->flags, DMA_RTAIL))
  return mdata->ps_head == mdata->ps_tail;
 return mdata->ps_seq != rhf_rcv_seq(rhf);
}
