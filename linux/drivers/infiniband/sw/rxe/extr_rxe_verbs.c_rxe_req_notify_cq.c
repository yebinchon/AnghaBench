
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxe_cq {int notify; int cq_lock; int queue; } ;
struct ib_cq {int dummy; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;


 int IB_CQ_NEXT_COMP ;
 int IB_CQ_REPORT_MISSED_EVENTS ;
 int IB_CQ_SOLICITED_MASK ;
 int queue_empty (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct rxe_cq* to_rcq (struct ib_cq*) ;

__attribute__((used)) static int rxe_req_notify_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags flags)
{
 struct rxe_cq *cq = to_rcq(ibcq);
 unsigned long irq_flags;
 int ret = 0;

 spin_lock_irqsave(&cq->cq_lock, irq_flags);
 if (cq->notify != IB_CQ_NEXT_COMP)
  cq->notify = flags & IB_CQ_SOLICITED_MASK;

 if ((flags & IB_CQ_REPORT_MISSED_EVENTS) && !queue_empty(cq->queue))
  ret = 1;

 spin_unlock_irqrestore(&cq->cq_lock, irq_flags);

 return ret;
}
