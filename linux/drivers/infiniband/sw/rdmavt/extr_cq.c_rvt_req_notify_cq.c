
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rvt_cq {int notify; int lock; TYPE_2__* kqueue; TYPE_1__* queue; } ;
struct ib_cq {int dummy; } ;
typedef enum ib_cq_notify_flags { ____Placeholder_ib_cq_notify_flags } ib_cq_notify_flags ;
struct TYPE_4__ {scalar_t__ head; scalar_t__ tail; } ;
struct TYPE_3__ {int tail; int head; } ;


 int IB_CQ_NEXT_COMP ;
 int IB_CQ_REPORT_MISSED_EVENTS ;
 int IB_CQ_SOLICITED_MASK ;
 scalar_t__ RDMA_READ_UAPI_ATOMIC (int ) ;
 struct rvt_cq* ibcq_to_rvtcq (struct ib_cq*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int rvt_req_notify_cq(struct ib_cq *ibcq, enum ib_cq_notify_flags notify_flags)
{
 struct rvt_cq *cq = ibcq_to_rvtcq(ibcq);
 unsigned long flags;
 int ret = 0;

 spin_lock_irqsave(&cq->lock, flags);




 if (cq->notify != IB_CQ_NEXT_COMP)
  cq->notify = notify_flags & IB_CQ_SOLICITED_MASK;

 if (notify_flags & IB_CQ_REPORT_MISSED_EVENTS) {
  if (cq->queue) {
   if (RDMA_READ_UAPI_ATOMIC(cq->queue->head) !=
    RDMA_READ_UAPI_ATOMIC(cq->queue->tail))
    ret = 1;
  } else {
   if (cq->kqueue->head != cq->kqueue->tail)
    ret = 1;
  }
 }

 spin_unlock_irqrestore(&cq->lock, flags);

 return ret;
}
