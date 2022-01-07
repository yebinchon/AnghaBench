
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int backoff_srcu; int flags; int queue; } ;
struct intel_gt {TYPE_1__ reset; } ;


 int EINTR ;
 int I915_RESET_BACKOFF ;
 int might_lock (int *) ;
 int might_sleep () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int srcu_read_lock (int *) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

int intel_gt_reset_trylock(struct intel_gt *gt, int *srcu)
{
 might_lock(&gt->reset.backoff_srcu);
 might_sleep();

 rcu_read_lock();
 while (test_bit(I915_RESET_BACKOFF, &gt->reset.flags)) {
  rcu_read_unlock();

  if (wait_event_interruptible(gt->reset.queue,
          !test_bit(I915_RESET_BACKOFF,
             &gt->reset.flags)))
   return -EINTR;

  rcu_read_lock();
 }
 *srcu = srcu_read_lock(&gt->reset.backoff_srcu);
 rcu_read_unlock();

 return 0;
}
