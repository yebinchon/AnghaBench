
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int s_rnr_timer; int s_timer; } ;


 int del_timer_sync (int *) ;
 int hrtimer_cancel (int *) ;

void rvt_del_timers_sync(struct rvt_qp *qp)
{
 del_timer_sync(&qp->s_timer);
 hrtimer_cancel(&qp->s_rnr_timer);
}
