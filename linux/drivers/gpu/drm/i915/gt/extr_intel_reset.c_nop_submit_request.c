
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ active; int name; } ;
struct TYPE_4__ {int seqno; int context; } ;
struct i915_request {TYPE_2__ fence; struct intel_engine_cs* engine; } ;


 int EIO ;
 int GEM_TRACE (char*,int ,int ,int ) ;
 int __i915_request_submit (struct i915_request*) ;
 int dma_fence_set_error (TYPE_2__*,int ) ;
 int i915_request_mark_complete (struct i915_request*) ;
 int intel_engine_queue_breadcrumbs (struct intel_engine_cs*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nop_submit_request(struct i915_request *request)
{
 struct intel_engine_cs *engine = request->engine;
 unsigned long flags;

 GEM_TRACE("%s fence %llx:%lld -> -EIO\n",
    engine->name, request->fence.context, request->fence.seqno);
 dma_fence_set_error(&request->fence, -EIO);

 spin_lock_irqsave(&engine->active.lock, flags);
 __i915_request_submit(request);
 i915_request_mark_complete(request);
 spin_unlock_irqrestore(&engine->active.lock, flags);

 intel_engine_queue_breadcrumbs(engine);
}
