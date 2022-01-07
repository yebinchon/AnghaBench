
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int task; } ;
struct TYPE_6__ {int task; } ;
struct TYPE_4__ {scalar_t__ queue; } ;
struct rxe_qp {TYPE_2__ req; TYPE_3__ comp; TYPE_1__ sq; } ;


 scalar_t__ IB_QPT_RC ;
 scalar_t__ QP_STATE_DRAIN ;
 scalar_t__ QP_STATE_DRAINED ;
 int __rxe_do_task (int *) ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 int rxe_run_task (int *,int) ;

__attribute__((used)) static void rxe_qp_drain(struct rxe_qp *qp)
{
 if (qp->sq.queue) {
  if (qp->req.state != QP_STATE_DRAINED) {
   qp->req.state = QP_STATE_DRAIN;
   if (qp_type(qp) == IB_QPT_RC)
    rxe_run_task(&qp->comp.task, 1);
   else
    __rxe_do_task(&qp->comp.task);
   rxe_run_task(&qp->req.task, 1);
  }
 }
}
