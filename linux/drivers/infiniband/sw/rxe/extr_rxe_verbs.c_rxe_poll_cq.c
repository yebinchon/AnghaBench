
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_cqe {int ibwc; } ;
struct rxe_cq {int cq_lock; int queue; } ;
struct ib_wc {int dummy; } ;
struct ib_cq {int dummy; } ;


 int advance_consumer (int ) ;
 int memcpy (int ,int *,int) ;
 struct rxe_cqe* queue_head (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rxe_cq* to_rcq (struct ib_cq*) ;

__attribute__((used)) static int rxe_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 int i;
 struct rxe_cq *cq = to_rcq(ibcq);
 struct rxe_cqe *cqe;
 unsigned long flags;

 spin_lock_irqsave(&cq->cq_lock, flags);
 for (i = 0; i < num_entries; i++) {
  cqe = queue_head(cq->queue);
  if (!cqe)
   break;

  memcpy(wc++, &cqe->ibwc, sizeof(*wc));
  advance_consumer(cq->queue);
 }
 spin_unlock_irqrestore(&cq->cq_lock, flags);

 return i;
}
