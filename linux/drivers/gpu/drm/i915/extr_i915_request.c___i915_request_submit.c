
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int requests; int lock; } ;
struct intel_engine_cs {TYPE_3__ active; int serial; int (* emit_fini_breadcrumb ) (struct i915_request*,scalar_t__) ;int saturated; int name; } ;
struct TYPE_8__ {int flags; int seqno; int context; } ;
struct TYPE_6__ {int link; int semaphores; } ;
struct i915_request {int lock; TYPE_4__ fence; TYPE_2__ sched; scalar_t__ postfix; TYPE_1__* ring; int semaphore; int gem_context; struct intel_engine_cs* engine; } ;
struct TYPE_5__ {scalar_t__ vaddr; } ;


 int DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ;
 int DMA_FENCE_FLAG_SIGNALED_BIT ;
 int EIO ;
 int GEM_BUG_ON (int) ;
 int GEM_TRACE (char*,int ,int ,int ,int ) ;
 int I915_FENCE_FLAG_ACTIVE ;
 int SINGLE_DEPTH_NESTING ;
 int __notify_execute_cb (struct i915_request*) ;
 int hwsp_seqno (struct i915_request*) ;
 scalar_t__ i915_gem_context_is_banned (int ) ;
 scalar_t__ i915_request_completed (struct i915_request*) ;
 int i915_request_enable_breadcrumb (struct i915_request*) ;
 int i915_request_skip (struct i915_request*,int ) ;
 scalar_t__ i915_sw_fence_signaled (int *) ;
 int intel_engine_queue_breadcrumbs (struct intel_engine_cs*) ;
 int irqs_disabled () ;
 int list_move_tail (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_nested (int *,int ) ;
 int spin_unlock (int *) ;
 int stub1 (struct i915_request*,scalar_t__) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int trace_i915_request_execute (struct i915_request*) ;

bool __i915_request_submit(struct i915_request *request)
{
 struct intel_engine_cs *engine = request->engine;
 bool result = 0;

 GEM_TRACE("%s fence %llx:%lld, current %d\n",
    engine->name,
    request->fence.context, request->fence.seqno,
    hwsp_seqno(request));

 GEM_BUG_ON(!irqs_disabled());
 lockdep_assert_held(&engine->active.lock);
 if (i915_request_completed(request))
  goto xfer;

 if (i915_gem_context_is_banned(request->gem_context))
  i915_request_skip(request, -EIO);
 if (request->sched.semaphores &&
     i915_sw_fence_signaled(&request->semaphore))
  engine->saturated |= request->sched.semaphores;

 engine->emit_fini_breadcrumb(request,
         request->ring->vaddr + request->postfix);

 trace_i915_request_execute(request);
 engine->serial++;
 result = 1;

xfer:
 spin_lock_nested(&request->lock, SINGLE_DEPTH_NESTING);

 if (!test_and_set_bit(I915_FENCE_FLAG_ACTIVE, &request->fence.flags))
  list_move_tail(&request->sched.link, &engine->active.requests);

 if (test_bit(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
     !test_bit(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
     !i915_request_enable_breadcrumb(request))
  intel_engine_queue_breadcrumbs(engine);

 __notify_execute_cb(request);

 spin_unlock(&request->lock);

 return result;
}
