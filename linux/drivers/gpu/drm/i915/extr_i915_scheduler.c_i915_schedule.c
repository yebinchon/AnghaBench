
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sched_attr {int dummy; } ;
struct i915_request {int sched; } ;


 int __i915_schedule (int *,struct i915_sched_attr const*) ;
 int schedule_lock ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void i915_schedule(struct i915_request *rq, const struct i915_sched_attr *attr)
{
 spin_lock_irq(&schedule_lock);
 __i915_schedule(&rq->sched, attr);
 spin_unlock_irq(&schedule_lock);
}
