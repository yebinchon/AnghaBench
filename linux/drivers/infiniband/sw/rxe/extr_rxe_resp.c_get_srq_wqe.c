
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int srq_context; int (* event_handler ) (struct ib_event*,int ) ;} ;
struct TYPE_8__ {int consumer_lock; struct rxe_queue* queue; } ;
struct rxe_srq {scalar_t__ limit; TYPE_5__ ibsrq; TYPE_2__ rq; scalar_t__ error; } ;
struct rxe_recv_wqe {int dummy; } ;
struct rxe_queue {int dummy; } ;
struct TYPE_10__ {int srq; int device; } ;
struct TYPE_12__ {int wqe; } ;
struct TYPE_7__ {TYPE_6__ srq_wqe; int * wqe; } ;
struct rxe_qp {TYPE_4__ ibqp; TYPE_1__ resp; struct rxe_srq* srq; } ;
struct TYPE_9__ {int srq; } ;
struct ib_event {int event; TYPE_3__ element; int device; } ;
typedef enum resp_states { ____Placeholder_resp_states } resp_states ;


 int IB_EVENT_SRQ_LIMIT_REACHED ;
 int RESPST_CHK_LENGTH ;
 int RESPST_ERR_RNR ;
 int advance_consumer (struct rxe_queue*) ;
 int memcpy (TYPE_6__*,struct rxe_recv_wqe*,int) ;
 scalar_t__ queue_count (struct rxe_queue*) ;
 struct rxe_recv_wqe* queue_head (struct rxe_queue*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct ib_event*,int ) ;

__attribute__((used)) static enum resp_states get_srq_wqe(struct rxe_qp *qp)
{
 struct rxe_srq *srq = qp->srq;
 struct rxe_queue *q = srq->rq.queue;
 struct rxe_recv_wqe *wqe;
 struct ib_event ev;

 if (srq->error)
  return RESPST_ERR_RNR;

 spin_lock_bh(&srq->rq.consumer_lock);

 wqe = queue_head(q);
 if (!wqe) {
  spin_unlock_bh(&srq->rq.consumer_lock);
  return RESPST_ERR_RNR;
 }


 memcpy(&qp->resp.srq_wqe, wqe, sizeof(qp->resp.srq_wqe));

 qp->resp.wqe = &qp->resp.srq_wqe.wqe;
 advance_consumer(q);

 if (srq->limit && srq->ibsrq.event_handler &&
     (queue_count(q) < srq->limit)) {
  srq->limit = 0;
  goto event;
 }

 spin_unlock_bh(&srq->rq.consumer_lock);
 return RESPST_CHK_LENGTH;

event:
 spin_unlock_bh(&srq->rq.consumer_lock);
 ev.device = qp->ibqp.device;
 ev.element.srq = qp->ibqp.srq;
 ev.event = IB_EVENT_SRQ_LIMIT_REACHED;
 srq->ibsrq.event_handler(&ev, srq->ibsrq.srq_context);
 return RESPST_CHK_LENGTH;
}
