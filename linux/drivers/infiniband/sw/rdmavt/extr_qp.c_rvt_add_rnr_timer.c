
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rvt_qp {int s_rnr_timer; int s_flags; int s_lock; } ;


 int HRTIMER_MODE_REL_PINNED ;
 int RVT_S_WAIT_RNR ;
 int hrtimer_start (int *,int ,int ) ;
 int lockdep_assert_held (int *) ;
 int ns_to_ktime (int) ;
 int rvt_aeth_to_usec (int) ;
 int trace_rvt_rnrnak_add (struct rvt_qp*,int) ;

void rvt_add_rnr_timer(struct rvt_qp *qp, u32 aeth)
{
 u32 to;

 lockdep_assert_held(&qp->s_lock);
 qp->s_flags |= RVT_S_WAIT_RNR;
 to = rvt_aeth_to_usec(aeth);
 trace_rvt_rnrnak_add(qp, to);
 hrtimer_start(&qp->s_rnr_timer,
        ns_to_ktime(1000 * to), HRTIMER_MODE_REL_PINNED);
}
