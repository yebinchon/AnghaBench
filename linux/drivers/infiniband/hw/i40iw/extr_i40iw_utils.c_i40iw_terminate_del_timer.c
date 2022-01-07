
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_qp {scalar_t__ back_qp; } ;
struct i40iw_qp {int ibqp; int terminate_timer; } ;


 scalar_t__ del_timer (int *) ;
 int i40iw_rem_ref (int *) ;

void i40iw_terminate_del_timer(struct i40iw_sc_qp *qp)
{
 struct i40iw_qp *iwqp;

 iwqp = (struct i40iw_qp *)qp->back_qp;
 if (del_timer(&iwqp->terminate_timer))
  i40iw_rem_ref(&iwqp->ibqp);
}
