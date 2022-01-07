
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int producer_lock; } ;
struct rxe_srq {TYPE_1__ rq; } ;
struct ib_srq {int dummy; } ;
struct ib_recv_wr {struct ib_recv_wr* next; } ;


 int post_one_recv (TYPE_1__*,struct ib_recv_wr const*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rxe_srq* to_rsrq (struct ib_srq*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int rxe_post_srq_recv(struct ib_srq *ibsrq, const struct ib_recv_wr *wr,
        const struct ib_recv_wr **bad_wr)
{
 int err = 0;
 unsigned long flags;
 struct rxe_srq *srq = to_rsrq(ibsrq);

 spin_lock_irqsave(&srq->rq.producer_lock, flags);

 while (wr) {
  err = post_one_recv(&srq->rq, wr);
  if (unlikely(err))
   break;
  wr = wr->next;
 }

 spin_unlock_irqrestore(&srq->rq.producer_lock, flags);

 if (err)
  *bad_wr = wr;

 return err;
}
