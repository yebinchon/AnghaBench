
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rxe_cqe {int dummy; } ;
struct TYPE_4__ {int cq_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct rxe_cq {scalar_t__ notify; int comp_task; int cq_lock; int queue; TYPE_2__ ibcq; } ;
struct TYPE_3__ {TYPE_2__* cq; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;


 int EBUSY ;
 scalar_t__ IB_CQ_NEXT_COMP ;
 scalar_t__ IB_CQ_SOLICITED ;
 int IB_EVENT_CQ_ERR ;
 int advance_producer (int ) ;
 int memcpy (int ,struct rxe_cqe*,int) ;
 int producer_addr (int ) ;
 int queue_full (int ) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ib_event*,int ) ;
 int tasklet_schedule (int *) ;
 scalar_t__ unlikely (int ) ;

int rxe_cq_post(struct rxe_cq *cq, struct rxe_cqe *cqe, int solicited)
{
 struct ib_event ev;
 unsigned long flags;

 spin_lock_irqsave(&cq->cq_lock, flags);

 if (unlikely(queue_full(cq->queue))) {
  spin_unlock_irqrestore(&cq->cq_lock, flags);
  if (cq->ibcq.event_handler) {
   ev.device = cq->ibcq.device;
   ev.element.cq = &cq->ibcq;
   ev.event = IB_EVENT_CQ_ERR;
   cq->ibcq.event_handler(&ev, cq->ibcq.cq_context);
  }

  return -EBUSY;
 }

 memcpy(producer_addr(cq->queue), cqe, sizeof(*cqe));




 smp_wmb();

 advance_producer(cq->queue);
 spin_unlock_irqrestore(&cq->cq_lock, flags);

 if ((cq->notify == IB_CQ_NEXT_COMP) ||
     (cq->notify == IB_CQ_SOLICITED && solicited)) {
  cq->notify = 0;
  tasklet_schedule(&cq->comp_task);
 }

 return 0;
}
