
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct t4_cqe {int dummy; } ;
struct TYPE_6__ {TYPE_3__* qp; TYPE_4__* cq; } ;
struct ib_event {int event; TYPE_2__ element; int device; } ;
struct c4iw_qp_attributes {int next_state; } ;
struct TYPE_7__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;} ;
struct TYPE_5__ {scalar_t__ state; } ;
struct c4iw_qp {TYPE_3__ ibqp; int rhp; TYPE_1__ attr; } ;
struct c4iw_dev {int dummy; } ;
struct TYPE_8__ {int cq_context; int (* comp_handler ) (TYPE_4__*,int ) ;int device; } ;
struct c4iw_cq {int comp_handler_lock; TYPE_4__ ibcq; int cq; } ;
typedef enum ib_event_type { ____Placeholder_ib_event_type } ib_event_type ;


 int C4IW_QP_ATTR_NEXT_STATE ;
 scalar_t__ C4IW_QP_STATE_RTS ;
 int C4IW_QP_STATE_TERMINATE ;
 int IB_EVENT_CQ_ERR ;
 int c4iw_modify_qp (int ,struct c4iw_qp*,int ,struct c4iw_qp_attributes*,int ) ;
 int dump_err_cqe (struct c4iw_dev*,struct t4_cqe*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ib_event*,int ) ;
 int stub2 (TYPE_4__*,int ) ;
 scalar_t__ t4_clear_cq_armed (int *) ;

__attribute__((used)) static void post_qp_event(struct c4iw_dev *dev, struct c4iw_cq *chp,
     struct c4iw_qp *qhp,
     struct t4_cqe *err_cqe,
     enum ib_event_type ib_event)
{
 struct ib_event event;
 struct c4iw_qp_attributes attrs;
 unsigned long flag;

 dump_err_cqe(dev, err_cqe);

 if (qhp->attr.state == C4IW_QP_STATE_RTS) {
  attrs.next_state = C4IW_QP_STATE_TERMINATE;
  c4iw_modify_qp(qhp->rhp, qhp, C4IW_QP_ATTR_NEXT_STATE,
          &attrs, 0);
 }

 event.event = ib_event;
 event.device = chp->ibcq.device;
 if (ib_event == IB_EVENT_CQ_ERR)
  event.element.cq = &chp->ibcq;
 else
  event.element.qp = &qhp->ibqp;
 if (qhp->ibqp.event_handler)
  (*qhp->ibqp.event_handler)(&event, qhp->ibqp.qp_context);

 if (t4_clear_cq_armed(&chp->cq)) {
  spin_lock_irqsave(&chp->comp_handler_lock, flag);
  (*chp->ibcq.comp_handler)(&chp->ibcq, chp->ibcq.cq_context);
  spin_unlock_irqrestore(&chp->comp_handler_lock, flag);
 }
}
