
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocrdma_dev {int flush_q_lock; } ;
struct TYPE_2__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct ocrdma_cq {int comp_handler_lock; TYPE_1__ ibcq; } ;


 struct ocrdma_cq* _ocrdma_qp_buddy_cq_handler (struct ocrdma_dev*,struct ocrdma_cq*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void ocrdma_qp_buddy_cq_handler(struct ocrdma_dev *dev,
           struct ocrdma_cq *cq)
{
 unsigned long flags;
 struct ocrdma_cq *bcq = ((void*)0);







 spin_lock_irqsave(&dev->flush_q_lock, flags);




 bcq = _ocrdma_qp_buddy_cq_handler(dev, cq, 1);
 if (bcq == ((void*)0))
  bcq = _ocrdma_qp_buddy_cq_handler(dev, cq, 0);
 spin_unlock_irqrestore(&dev->flush_q_lock, flags);


 if (bcq && bcq->ibcq.comp_handler) {
  spin_lock_irqsave(&bcq->comp_handler_lock, flags);
  (*bcq->ibcq.comp_handler) (&bcq->ibcq, bcq->ibcq.cq_context);
  spin_unlock_irqrestore(&bcq->comp_handler_lock, flags);
 }
}
