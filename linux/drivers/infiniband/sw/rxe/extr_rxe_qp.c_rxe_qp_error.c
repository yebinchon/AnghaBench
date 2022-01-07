
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int task; void* state; } ;
struct TYPE_5__ {int task; } ;
struct TYPE_7__ {int task; void* state; } ;
struct TYPE_8__ {int qp_state; } ;
struct rxe_qp {TYPE_2__ req; TYPE_1__ comp; TYPE_3__ resp; TYPE_4__ attr; } ;


 int IB_QPS_ERR ;
 scalar_t__ IB_QPT_RC ;
 void* QP_STATE_ERROR ;
 int __rxe_do_task (int *) ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 int rxe_run_task (int *,int) ;

void rxe_qp_error(struct rxe_qp *qp)
{
 qp->req.state = QP_STATE_ERROR;
 qp->resp.state = QP_STATE_ERROR;
 qp->attr.qp_state = IB_QPS_ERR;


 rxe_run_task(&qp->resp.task, 1);

 if (qp_type(qp) == IB_QPT_RC)
  rxe_run_task(&qp->comp.task, 1);
 else
  __rxe_do_task(&qp->comp.task);
 rxe_run_task(&qp->req.task, 1);
}
