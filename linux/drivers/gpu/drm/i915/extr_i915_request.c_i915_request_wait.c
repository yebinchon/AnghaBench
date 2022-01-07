
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_wait {int cb; int tsk; } ;
struct i915_request {TYPE_4__* engine; int fence; int i915; } ;
struct TYPE_8__ {TYPE_3__* gt; } ;
struct TYPE_5__ {int dep_map; } ;
struct TYPE_6__ {TYPE_1__ mutex; } ;
struct TYPE_7__ {TYPE_2__ reset; } ;


 scalar_t__ CONFIG_DRM_I915_SPIN_REQUEST ;
 long ERESTARTSYS ;
 long ETIME ;
 int GEM_BUG_ON (int) ;
 int I915_PRIORITY_WAIT ;
 unsigned int I915_WAIT_INTERRUPTIBLE ;
 unsigned int I915_WAIT_PRIORITY ;
 int INTEL_GEN (int ) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int TASK_UNINTERRUPTIBLE ;
 int _THIS_IP_ ;
 scalar_t__ __i915_spin_request (struct i915_request*,int const,scalar_t__) ;
 int __set_current_state (int ) ;
 int current ;
 scalar_t__ dma_fence_add_callback (int *,int *,int ) ;
 scalar_t__ dma_fence_is_signaled (int *) ;
 int dma_fence_remove_callback (int *,int *) ;
 int dma_fence_signal (int *) ;
 int gen6_rps_boost (struct i915_request*) ;
 scalar_t__ i915_request_completed (struct i915_request*) ;
 int i915_request_started (struct i915_request*) ;
 int i915_schedule_bump_priority (struct i915_request*,int ) ;
 long io_schedule_timeout (long) ;
 int might_sleep () ;
 int mutex_acquire (int *,int ,int ,int ) ;
 int mutex_release (int *,int ,int ) ;
 int request_wait_wake ;
 int set_current_state (int const) ;
 scalar_t__ signal_pending_state (int const,int ) ;
 int trace_i915_request_wait_begin (struct i915_request*,unsigned int) ;
 int trace_i915_request_wait_end (struct i915_request*) ;

long i915_request_wait(struct i915_request *rq,
         unsigned int flags,
         long timeout)
{
 const int state = flags & I915_WAIT_INTERRUPTIBLE ?
  TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE;
 struct request_wait wait;

 might_sleep();
 GEM_BUG_ON(timeout < 0);

 if (dma_fence_is_signaled(&rq->fence))
  return timeout;

 if (!timeout)
  return -ETIME;

 trace_i915_request_wait_begin(rq, flags);







 mutex_acquire(&rq->engine->gt->reset.mutex.dep_map, 0, 0, _THIS_IP_);
 if (CONFIG_DRM_I915_SPIN_REQUEST &&
     __i915_spin_request(rq, state, CONFIG_DRM_I915_SPIN_REQUEST)) {
  dma_fence_signal(&rq->fence);
  goto out;
 }
 if (flags & I915_WAIT_PRIORITY) {
  if (!i915_request_started(rq) && INTEL_GEN(rq->i915) >= 6)
   gen6_rps_boost(rq);
  i915_schedule_bump_priority(rq, I915_PRIORITY_WAIT);
 }

 wait.tsk = current;
 if (dma_fence_add_callback(&rq->fence, &wait.cb, request_wait_wake))
  goto out;

 for (;;) {
  set_current_state(state);

  if (i915_request_completed(rq)) {
   dma_fence_signal(&rq->fence);
   break;
  }

  if (signal_pending_state(state, current)) {
   timeout = -ERESTARTSYS;
   break;
  }

  if (!timeout) {
   timeout = -ETIME;
   break;
  }

  timeout = io_schedule_timeout(timeout);
 }
 __set_current_state(TASK_RUNNING);

 dma_fence_remove_callback(&rq->fence, &wait.cb);

out:
 mutex_release(&rq->engine->gt->reset.mutex.dep_map, 0, _THIS_IP_);
 trace_i915_request_wait_end(rq);
 return timeout;
}
