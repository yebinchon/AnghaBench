
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct i40iw_sc_qp {scalar_t__ back_qp; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct i40iw_qp {TYPE_1__ terminate_timer; int ibqp; } ;


 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 int i40iw_add_ref (int *) ;
 int i40iw_terminate_timeout ;
 scalar_t__ jiffies ;
 int timer_setup (TYPE_1__*,int ,int ) ;

void i40iw_terminate_start_timer(struct i40iw_sc_qp *qp)
{
 struct i40iw_qp *iwqp;

 iwqp = (struct i40iw_qp *)qp->back_qp;
 i40iw_add_ref(&iwqp->ibqp);
 timer_setup(&iwqp->terminate_timer, i40iw_terminate_timeout, 0);
 iwqp->terminate_timer.expires = jiffies + HZ;
 add_timer(&iwqp->terminate_timer);
}
