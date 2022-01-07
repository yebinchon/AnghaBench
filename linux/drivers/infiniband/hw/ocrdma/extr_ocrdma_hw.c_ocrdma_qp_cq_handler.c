
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ocrdma_dev {struct ocrdma_cq** cq_tbl; } ;
struct TYPE_2__ {int cq_context; int (* comp_handler ) (TYPE_1__*,int ) ;} ;
struct ocrdma_cq {int comp_handler_lock; TYPE_1__ ibcq; } ;


 int BUG () ;
 size_t OCRDMA_MAX_CQ ;
 int ocrdma_qp_buddy_cq_handler (struct ocrdma_dev*,struct ocrdma_cq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static void ocrdma_qp_cq_handler(struct ocrdma_dev *dev, u16 cq_idx)
{
 unsigned long flags;
 struct ocrdma_cq *cq;

 if (cq_idx >= OCRDMA_MAX_CQ)
  BUG();

 cq = dev->cq_tbl[cq_idx];
 if (cq == ((void*)0))
  return;

 if (cq->ibcq.comp_handler) {
  spin_lock_irqsave(&cq->comp_handler_lock, flags);
  (*cq->ibcq.comp_handler) (&cq->ibcq, cq->ibcq.cq_context);
  spin_unlock_irqrestore(&cq->comp_handler_lock, flags);
 }
 ocrdma_qp_buddy_cq_handler(dev, cq);
}
