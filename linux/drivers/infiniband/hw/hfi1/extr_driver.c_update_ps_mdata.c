
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_mdata {scalar_t__ ps_head; scalar_t__ rsize; scalar_t__ maxcnt; int ps_seq; } ;
struct hfi1_ctxtdata {scalar_t__ ctxt; int flags; } ;


 int DMA_RTAIL ;
 int HFI1_CAP_KGET_MASK (int ,int ) ;
 scalar_t__ HFI1_CTRL_CTXT ;

__attribute__((used)) static inline void update_ps_mdata(struct ps_mdata *mdata,
       struct hfi1_ctxtdata *rcd)
{
 mdata->ps_head += mdata->rsize;
 if (mdata->ps_head >= mdata->maxcnt)
  mdata->ps_head = 0;


 if (!HFI1_CAP_KGET_MASK(rcd->flags, DMA_RTAIL) ||
     (rcd->ctxt == HFI1_CTRL_CTXT)) {
  if (++mdata->ps_seq > 13)
   mdata->ps_seq = 1;
 }
}
