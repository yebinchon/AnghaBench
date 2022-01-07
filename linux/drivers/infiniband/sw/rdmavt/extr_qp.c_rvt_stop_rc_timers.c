
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int s_flags; int s_rnr_timer; int s_timer; int s_lock; } ;


 int RVT_S_TIMER ;
 int RVT_S_WAIT_RNR ;
 int del_timer (int *) ;
 int hrtimer_try_to_cancel (int *) ;
 int lockdep_assert_held (int *) ;

void rvt_stop_rc_timers(struct rvt_qp *qp)
{
 lockdep_assert_held(&qp->s_lock);

 if (qp->s_flags & (RVT_S_TIMER | RVT_S_WAIT_RNR)) {
  qp->s_flags &= ~(RVT_S_TIMER | RVT_S_WAIT_RNR);
  del_timer(&qp->s_timer);
  hrtimer_try_to_cancel(&qp->s_rnr_timer);
 }
}
