
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int opcode; int task; scalar_t__ noack_pkts; scalar_t__ need_retry; void* state; } ;
struct TYPE_7__ {int task; } ;
struct TYPE_6__ {scalar_t__ queue; } ;
struct TYPE_5__ {int opcode; int task; int * mr; scalar_t__ sent_psn_nak; scalar_t__ goto_error; scalar_t__ drop_msg; scalar_t__ msn; void* state; } ;
struct rxe_qp {TYPE_4__ req; TYPE_3__ comp; TYPE_2__ sq; TYPE_1__ resp; int ssn; } ;


 scalar_t__ IB_QPT_RC ;
 void* QP_STATE_RESET ;
 int __rxe_do_task (int *) ;
 int atomic_set (int *,int ) ;
 int cleanup_rd_atomic_resources (struct rxe_qp*) ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 int rxe_disable_task (int *) ;
 int rxe_drop_ref (int *) ;
 int rxe_enable_task (int *) ;
 int rxe_queue_reset (scalar_t__) ;

__attribute__((used)) static void rxe_qp_reset(struct rxe_qp *qp)
{

 rxe_disable_task(&qp->resp.task);


 if (qp->sq.queue) {
  if (qp_type(qp) == IB_QPT_RC)
   rxe_disable_task(&qp->comp.task);
  rxe_disable_task(&qp->req.task);
 }


 qp->req.state = QP_STATE_RESET;
 qp->resp.state = QP_STATE_RESET;




 __rxe_do_task(&qp->resp.task);

 if (qp->sq.queue) {
  __rxe_do_task(&qp->comp.task);
  __rxe_do_task(&qp->req.task);
  rxe_queue_reset(qp->sq.queue);
 }


 atomic_set(&qp->ssn, 0);
 qp->req.opcode = -1;
 qp->req.need_retry = 0;
 qp->req.noack_pkts = 0;
 qp->resp.msn = 0;
 qp->resp.opcode = -1;
 qp->resp.drop_msg = 0;
 qp->resp.goto_error = 0;
 qp->resp.sent_psn_nak = 0;

 if (qp->resp.mr) {
  rxe_drop_ref(qp->resp.mr);
  qp->resp.mr = ((void*)0);
 }

 cleanup_rd_atomic_resources(qp);


 rxe_enable_task(&qp->resp.task);

 if (qp->sq.queue) {
  if (qp_type(qp) == IB_QPT_RC)
   rxe_enable_task(&qp->comp.task);

  rxe_enable_task(&qp->req.task);
 }
}
