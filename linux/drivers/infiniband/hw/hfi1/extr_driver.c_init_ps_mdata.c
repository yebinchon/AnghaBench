
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps_mdata {int ps_seq; int ps_tail; int ps_head; int maxcnt; int rsize; struct hfi1_ctxtdata* rcd; } ;
struct hfi1_packet {int rhqoff; int maxcnt; int rsize; struct hfi1_ctxtdata* rcd; } ;
struct hfi1_ctxtdata {scalar_t__ ctxt; int seq_cnt; int flags; } ;


 int DMA_RTAIL ;
 scalar_t__ HFI1_CAP_KGET_MASK (int ,int ) ;
 scalar_t__ HFI1_CTRL_CTXT ;
 int get_rcvhdrtail (struct hfi1_ctxtdata*) ;

__attribute__((used)) static inline void init_ps_mdata(struct ps_mdata *mdata,
     struct hfi1_packet *packet)
{
 struct hfi1_ctxtdata *rcd = packet->rcd;

 mdata->rcd = rcd;
 mdata->rsize = packet->rsize;
 mdata->maxcnt = packet->maxcnt;
 mdata->ps_head = packet->rhqoff;

 if (HFI1_CAP_KGET_MASK(rcd->flags, DMA_RTAIL)) {
  mdata->ps_tail = get_rcvhdrtail(rcd);
  if (rcd->ctxt == HFI1_CTRL_CTXT)
   mdata->ps_seq = rcd->seq_cnt;
  else
   mdata->ps_seq = 0;
 } else {
  mdata->ps_tail = 0;
  mdata->ps_seq = rcd->seq_cnt;
 }
}
