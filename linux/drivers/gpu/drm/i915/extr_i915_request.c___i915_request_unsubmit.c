
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ active; int name; } ;
struct TYPE_7__ {int priority; } ;
struct TYPE_8__ {scalar_t__ semaphores; TYPE_3__ attr; } ;
struct TYPE_6__ {int flags; int seqno; int context; } ;
struct i915_request {TYPE_4__ sched; int lock; TYPE_2__ fence; struct intel_engine_cs* engine; } ;


 int DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ;
 int GEM_BUG_ON (int) ;
 int GEM_TRACE (char*,int ,int ,int ,int ) ;
 int I915_FENCE_FLAG_ACTIVE ;
 int I915_PRIORITY_NOSEMAPHORE ;
 int SINGLE_DEPTH_NESTING ;
 int clear_bit (int ,int *) ;
 int hwsp_seqno (struct i915_request*) ;
 int i915_request_cancel_breadcrumb (struct i915_request*) ;
 scalar_t__ i915_request_started (struct i915_request*) ;
 int irqs_disabled () ;
 int lockdep_assert_held (int *) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 scalar_t__ test_bit (int ,int *) ;

void __i915_request_unsubmit(struct i915_request *request)
{
 struct intel_engine_cs *engine = request->engine;

 GEM_TRACE("%s fence %llx:%lld, current %d\n",
    engine->name,
    request->fence.context, request->fence.seqno,
    hwsp_seqno(request));

 GEM_BUG_ON(!irqs_disabled());
 lockdep_assert_held(&engine->active.lock);







 spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);

 if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
  i915_request_cancel_breadcrumb(request);

 GEM_BUG_ON(!test_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
 clear_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);

 spin_unlock(&request->lock);


 if (request->sched.semaphores && i915_request_started(request)) {
  request->sched.attr.priority |= I915_PRIORITY_NOSEMAPHORE;
  request->sched.semaphores = 0;
 }
}
