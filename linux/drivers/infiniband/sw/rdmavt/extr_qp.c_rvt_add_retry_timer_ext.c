
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct ib_qp {int device; } ;
struct rvt_qp {int timeout_jiffies; TYPE_1__ s_timer; int s_flags; int s_lock; struct ib_qp ibqp; } ;
struct rvt_dev_info {scalar_t__ busy_jiffies; } ;


 int RVT_S_TIMER ;
 int add_timer (TYPE_1__*) ;
 struct rvt_dev_info* ib_to_rvt (int ) ;
 scalar_t__ jiffies ;
 int lockdep_assert_held (int *) ;

void rvt_add_retry_timer_ext(struct rvt_qp *qp, u8 shift)
{
 struct ib_qp *ibqp = &qp->ibqp;
 struct rvt_dev_info *rdi = ib_to_rvt(ibqp->device);

 lockdep_assert_held(&qp->s_lock);
 qp->s_flags |= RVT_S_TIMER;

 qp->s_timer.expires = jiffies + rdi->busy_jiffies +
         (qp->timeout_jiffies << shift);
 add_timer(&qp->s_timer);
}
