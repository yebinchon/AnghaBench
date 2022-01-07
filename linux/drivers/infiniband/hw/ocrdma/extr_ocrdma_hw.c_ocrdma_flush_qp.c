
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int device; } ;
struct ocrdma_qp {TYPE_3__* rq_cq; int rq_entry; int srq; TYPE_2__* sq_cq; int sq_entry; TYPE_1__ ibqp; } ;
struct ocrdma_dev {int flush_q_lock; } ;
struct TYPE_6__ {int rq_head; } ;
struct TYPE_5__ {int sq_head; } ;


 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 int list_add_tail (int *,int *) ;
 int ocrdma_is_qp_in_rq_flushlist (TYPE_3__*,struct ocrdma_qp*) ;
 int ocrdma_is_qp_in_sq_flushlist (TYPE_2__*,struct ocrdma_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ocrdma_flush_qp(struct ocrdma_qp *qp)
{
 bool found;
 unsigned long flags;
 struct ocrdma_dev *dev = get_ocrdma_dev(qp->ibqp.device);

 spin_lock_irqsave(&dev->flush_q_lock, flags);
 found = ocrdma_is_qp_in_sq_flushlist(qp->sq_cq, qp);
 if (!found)
  list_add_tail(&qp->sq_entry, &qp->sq_cq->sq_head);
 if (!qp->srq) {
  found = ocrdma_is_qp_in_rq_flushlist(qp->rq_cq, qp);
  if (!found)
   list_add_tail(&qp->rq_entry, &qp->rq_cq->rq_head);
 }
 spin_unlock_irqrestore(&dev->flush_q_lock, flags);
}
