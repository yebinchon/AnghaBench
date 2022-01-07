
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int timeout; int task; } ;
struct rxe_qp {TYPE_1__ comp; scalar_t__ valid; } ;


 struct rxe_qp* from_timer (int ,struct timer_list*,int ) ;
 struct rxe_qp* qp ;
 int retrans_timer ;
 int rxe_run_task (int *,int) ;

void retransmit_timer(struct timer_list *t)
{
 struct rxe_qp *qp = from_timer(qp, t, retrans_timer);

 if (qp->valid) {
  qp->comp.timeout = 1;
  rxe_run_task(&qp->comp.task, 1);
 }
}
