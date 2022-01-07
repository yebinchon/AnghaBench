
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_cq {int is_dying; int cq_lock; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void rxe_cq_disable(struct rxe_cq *cq)
{
 unsigned long flags;

 spin_lock_irqsave(&cq->cq_lock, flags);
 cq->is_dying = 1;
 spin_unlock_irqrestore(&cq->cq_lock, flags);
}
