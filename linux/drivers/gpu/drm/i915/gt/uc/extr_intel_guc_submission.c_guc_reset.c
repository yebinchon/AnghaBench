
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_engine_execlists {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ active; struct intel_engine_execlists execlists; } ;
struct i915_request {int head; int hw_context; } ;


 int __i915_request_reset (struct i915_request*,int) ;
 int cancel_port_requests (struct intel_engine_execlists* const) ;
 struct i915_request* execlists_unwind_incomplete_requests (struct intel_engine_execlists* const) ;
 int i915_request_started (struct i915_request*) ;
 int intel_lr_context_reset (struct intel_engine_cs*,int ,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void guc_reset(struct intel_engine_cs *engine, bool stalled)
{
 struct intel_engine_execlists * const execlists = &engine->execlists;
 struct i915_request *rq;
 unsigned long flags;

 spin_lock_irqsave(&engine->active.lock, flags);

 cancel_port_requests(execlists);


 rq = execlists_unwind_incomplete_requests(execlists);
 if (!rq)
  goto out_unlock;

 if (!i915_request_started(rq))
  stalled = 0;

 __i915_request_reset(rq, stalled);
 intel_lr_context_reset(engine, rq->hw_context, rq->head, stalled);

out_unlock:
 spin_unlock_irqrestore(&engine->active.lock, flags);
}
