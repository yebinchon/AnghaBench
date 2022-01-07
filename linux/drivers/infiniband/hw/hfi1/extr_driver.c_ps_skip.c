
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ps_mdata {scalar_t__ ps_head; scalar_t__ ps_tail; scalar_t__ ps_seq; } ;
struct hfi1_ctxtdata {scalar_t__ ctxt; } ;


 scalar_t__ HFI1_CTRL_CTXT ;
 scalar_t__ rhf_rcv_seq (int ) ;

__attribute__((used)) static inline int ps_skip(struct ps_mdata *mdata, u64 rhf,
     struct hfi1_ctxtdata *rcd)
{




 if ((rcd->ctxt == HFI1_CTRL_CTXT) && (mdata->ps_head != mdata->ps_tail))
  return mdata->ps_seq != rhf_rcv_seq(rhf);

 return 0;
}
