
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rxe_sq {int sq_lock; int queue; } ;
struct rxe_send_wqe {int dummy; } ;
struct rxe_qp {struct rxe_sq sq; } ;
struct ib_send_wr {int dummy; } ;


 int ENOMEM ;
 int advance_producer (int ) ;
 int init_send_wqe (struct rxe_qp*,struct ib_send_wr const*,unsigned int,int ,struct rxe_send_wqe*) ;
 struct rxe_send_wqe* producer_addr (int ) ;
 int queue_full (int ) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;
 int validate_send_wr (struct rxe_qp*,struct ib_send_wr const*,unsigned int,int ) ;

__attribute__((used)) static int post_one_send(struct rxe_qp *qp, const struct ib_send_wr *ibwr,
    unsigned int mask, u32 length)
{
 int err;
 struct rxe_sq *sq = &qp->sq;
 struct rxe_send_wqe *send_wqe;
 unsigned long flags;

 err = validate_send_wr(qp, ibwr, mask, length);
 if (err)
  return err;

 spin_lock_irqsave(&qp->sq.sq_lock, flags);

 if (unlikely(queue_full(sq->queue))) {
  err = -ENOMEM;
  goto err1;
 }

 send_wqe = producer_addr(sq->queue);

 err = init_send_wqe(qp, ibwr, mask, length, send_wqe);
 if (unlikely(err))
  goto err1;





 smp_wmb();

 advance_producer(sq->queue);
 spin_unlock_irqrestore(&qp->sq.sq_lock, flags);

 return 0;

err1:
 spin_unlock_irqrestore(&qp->sq.sq_lock, flags);
 return err;
}
