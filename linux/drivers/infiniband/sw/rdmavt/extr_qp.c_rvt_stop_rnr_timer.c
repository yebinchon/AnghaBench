
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int s_flags; int s_lock; } ;


 int RVT_S_WAIT_RNR ;
 int lockdep_assert_held (int *) ;
 int trace_rvt_rnrnak_stop (struct rvt_qp*,int ) ;

__attribute__((used)) static void rvt_stop_rnr_timer(struct rvt_qp *qp)
{
 lockdep_assert_held(&qp->s_lock);

 if (qp->s_flags & RVT_S_WAIT_RNR) {
  qp->s_flags &= ~RVT_S_WAIT_RNR;
  trace_rvt_rnrnak_stop(qp, 0);
 }
}
