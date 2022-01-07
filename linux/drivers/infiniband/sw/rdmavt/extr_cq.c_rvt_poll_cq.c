
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct rvt_k_cq_wc {size_t tail; size_t head; struct ib_wc* kqueue; } ;
struct TYPE_2__ {size_t cqe; } ;
struct rvt_cq {int lock; TYPE_1__ ibcq; struct rvt_k_cq_wc* kqueue; scalar_t__ ip; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;


 int EINVAL ;
 struct rvt_cq* ibcq_to_rvtcq (struct ib_cq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_rvt_cq_poll (struct rvt_cq*,struct ib_wc*,int) ;

int rvt_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *entry)
{
 struct rvt_cq *cq = ibcq_to_rvtcq(ibcq);
 struct rvt_k_cq_wc *wc;
 unsigned long flags;
 int npolled;
 u32 tail;


 if (cq->ip)
  return -EINVAL;

 spin_lock_irqsave(&cq->lock, flags);

 wc = cq->kqueue;
 tail = wc->tail;
 if (tail > (u32)cq->ibcq.cqe)
  tail = (u32)cq->ibcq.cqe;
 for (npolled = 0; npolled < num_entries; ++npolled, ++entry) {
  if (tail == wc->head)
   break;

  trace_rvt_cq_poll(cq, &wc->kqueue[tail], npolled);
  *entry = wc->kqueue[tail];
  if (tail >= cq->ibcq.cqe)
   tail = 0;
  else
   tail++;
 }
 wc->tail = tail;

 spin_unlock_irqrestore(&cq->lock, flags);

 return npolled;
}
