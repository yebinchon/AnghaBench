
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priority; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct i915_request {TYPE_2__ sched; } ;


 int GEM_BUG_ON (unsigned int) ;
 unsigned int I915_PRIORITY_MASK ;
 unsigned int READ_ONCE (int ) ;
 int __bump_priority (TYPE_2__*,unsigned int) ;
 int schedule_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void i915_schedule_bump_priority(struct i915_request *rq, unsigned int bump)
{
 unsigned long flags;

 GEM_BUG_ON(bump & ~I915_PRIORITY_MASK);
 if (READ_ONCE(rq->sched.attr.priority) & bump)
  return;

 spin_lock_irqsave(&schedule_lock, flags);
 __bump_priority(&rq->sched, bump);
 spin_unlock_irqrestore(&schedule_lock, flags);
}
