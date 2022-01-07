
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct rxe_cq {TYPE_1__ ibcq; int cq_lock; scalar_t__ is_dying; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void rxe_send_complete(unsigned long data)
{
 struct rxe_cq *cq = (struct rxe_cq *)data;
 unsigned long flags;

 spin_lock_irqsave(&cq->cq_lock, flags);
 if (cq->is_dying) {
  spin_unlock_irqrestore(&cq->cq_lock, flags);
  return;
 }
 spin_unlock_irqrestore(&cq->cq_lock, flags);

 cq->ibcq.comp_handler(&cq->ibcq, cq->ibcq.cq_context);
}
