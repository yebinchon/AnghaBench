
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int task; } ;
struct TYPE_7__ {int task; } ;
struct TYPE_6__ {scalar_t__ queue; } ;
struct TYPE_5__ {int task; } ;
struct rxe_qp {TYPE_4__ req; TYPE_3__ comp; TYPE_2__ sq; int rnr_nak_timer; int retrans_timer; TYPE_1__ resp; scalar_t__ qp_timeout_jiffies; scalar_t__ valid; } ;


 scalar_t__ IB_QPT_RC ;
 int __rxe_do_task (int *) ;
 int del_timer_sync (int *) ;
 scalar_t__ qp_type (struct rxe_qp*) ;
 int rxe_cleanup_task (int *) ;

void rxe_qp_destroy(struct rxe_qp *qp)
{
 qp->valid = 0;
 qp->qp_timeout_jiffies = 0;
 rxe_cleanup_task(&qp->resp.task);

 if (qp_type(qp) == IB_QPT_RC) {
  del_timer_sync(&qp->retrans_timer);
  del_timer_sync(&qp->rnr_nak_timer);
 }

 rxe_cleanup_task(&qp->req.task);
 rxe_cleanup_task(&qp->comp.task);


 __rxe_do_task(&qp->req.task);
 if (qp->sq.queue) {
  __rxe_do_task(&qp->comp.task);
  __rxe_do_task(&qp->req.task);
 }
}
