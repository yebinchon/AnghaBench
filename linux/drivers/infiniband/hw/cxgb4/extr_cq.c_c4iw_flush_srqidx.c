
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int recv_cq; } ;
struct c4iw_qp {int lock; int wq; TYPE_1__ ibqp; } ;
struct c4iw_cq {int lock; int cq; } ;


 int insert_recv_cqe (int *,int *,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct c4iw_cq* to_c4iw_cq (int ) ;

void c4iw_flush_srqidx(struct c4iw_qp *qhp, u32 srqidx)
{
 struct c4iw_cq *rchp = to_c4iw_cq(qhp->ibqp.recv_cq);
 unsigned long flag;


 spin_lock_irqsave(&rchp->lock, flag);
 spin_lock(&qhp->lock);


 insert_recv_cqe(&qhp->wq, &rchp->cq, srqidx);

 spin_unlock(&qhp->lock);
 spin_unlock_irqrestore(&rchp->lock, flag);
}
