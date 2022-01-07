
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct rvt_qp {TYPE_2__ ibqp; int r_flags; } ;
struct TYPE_3__ {TYPE_2__* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;


 int IB_EVENT_COMM_EST ;
 int RVT_R_COMM_EST ;
 int stub1 (struct ib_event*,int ) ;

void rvt_comm_est(struct rvt_qp *qp)
{
 qp->r_flags |= RVT_R_COMM_EST;
 if (qp->ibqp.event_handler) {
  struct ib_event ev;

  ev.device = qp->ibqp.device;
  ev.element.qp = &qp->ibqp;
  ev.event = IB_EVENT_COMM_EST;
  qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
 }
}
