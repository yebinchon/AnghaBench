
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {int task; } ;
struct rxe_qp {TYPE_1__ req; } ;


 struct rxe_qp* from_timer (int ,struct timer_list*,void (*) (struct timer_list*)) ;
 int pr_debug (char*,int ) ;
 struct rxe_qp* qp ;
 int qp_num (struct rxe_qp*) ;
 int rxe_run_task (int *,int) ;

void rnr_nak_timer(struct timer_list *t)
{
 struct rxe_qp *qp = from_timer(qp, t, rnr_nak_timer);

 pr_debug("qp#%d rnr nak timer fired\n", qp_num(qp));
 rxe_run_task(&qp->req.task, 1);
}
