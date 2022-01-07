
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct ocrdma_qp {int rq_entry; int rq_cq; int srq; int sq_entry; int sq_cq; TYPE_1__ ibqp; } ;
struct ocrdma_dev {int flush_q_lock; } ;


 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 int list_del (int *) ;
 int ocrdma_is_qp_in_rq_flushlist (int ,struct ocrdma_qp*) ;
 int ocrdma_is_qp_in_sq_flushlist (int ,struct ocrdma_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void ocrdma_del_flush_qp(struct ocrdma_qp *qp)
{
 int found = 0;
 unsigned long flags;
 struct ocrdma_dev *dev = get_ocrdma_dev(qp->ibqp.device);


 spin_lock_irqsave(&dev->flush_q_lock, flags);
 found = ocrdma_is_qp_in_sq_flushlist(qp->sq_cq, qp);
 if (found)
  list_del(&qp->sq_entry);
 if (!qp->srq) {
  found = ocrdma_is_qp_in_rq_flushlist(qp->rq_cq, qp);
  if (found)
   list_del(&qp->rq_entry);
 }
 spin_unlock_irqrestore(&dev->flush_q_lock, flags);
}
