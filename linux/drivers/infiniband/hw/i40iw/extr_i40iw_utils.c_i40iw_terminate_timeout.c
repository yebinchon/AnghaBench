
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct i40iw_sc_qp {int dummy; } ;
struct i40iw_qp {int ibqp; int sc_qp; } ;


 struct i40iw_qp* from_timer (int ,struct timer_list*,int ) ;
 int i40iw_rem_ref (int *) ;
 int i40iw_terminate_done (struct i40iw_sc_qp*,int) ;
 struct i40iw_qp* iwqp ;
 int terminate_timer ;

__attribute__((used)) static void i40iw_terminate_timeout(struct timer_list *t)
{
 struct i40iw_qp *iwqp = from_timer(iwqp, t, terminate_timer);
 struct i40iw_sc_qp *qp = (struct i40iw_sc_qp *)&iwqp->sc_qp;

 i40iw_terminate_done(qp, 1);
 i40iw_rem_ref(&iwqp->ibqp);
}
