
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_rps {scalar_t__ boost_freq; int boosts; int work; int cur_freq; int num_waiters; int enabled; } ;
struct i915_request {int lock; int flags; int fence; TYPE_2__* i915; } ;
struct TYPE_3__ {struct intel_rps rps; } ;
struct TYPE_4__ {TYPE_1__ gt_pm; } ;


 int I915_REQUEST_WAITBOOST ;
 scalar_t__ READ_ONCE (int ) ;
 int atomic_fetch_inc (int *) ;
 int atomic_inc (int *) ;
 int dma_fence_is_signaled_locked (int *) ;
 int i915_request_has_waitboost (struct i915_request*) ;
 scalar_t__ i915_request_signaled (struct i915_request*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void gen6_rps_boost(struct i915_request *rq)
{
 struct intel_rps *rps = &rq->i915->gt_pm.rps;
 unsigned long flags;
 bool boost;




 if (!rps->enabled)
  return;

 if (i915_request_signaled(rq))
  return;


 boost = 0;
 spin_lock_irqsave(&rq->lock, flags);
 if (!i915_request_has_waitboost(rq) &&
     !dma_fence_is_signaled_locked(&rq->fence)) {
  boost = !atomic_fetch_inc(&rps->num_waiters);
  rq->flags |= I915_REQUEST_WAITBOOST;
 }
 spin_unlock_irqrestore(&rq->lock, flags);
 if (!boost)
  return;

 if (READ_ONCE(rps->cur_freq) < rps->boost_freq)
  schedule_work(&rps->work);

 atomic_inc(&rps->boosts);
}
