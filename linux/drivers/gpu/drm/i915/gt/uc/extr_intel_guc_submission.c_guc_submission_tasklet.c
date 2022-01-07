
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_engine_execlists {struct i915_request** inflight; } ;
struct TYPE_2__ {int lock; } ;
struct intel_engine_cs {TYPE_1__ active; struct intel_engine_execlists execlists; } ;
struct i915_request {int dummy; } ;


 int ARRAY_SIZE (struct i915_request**) ;
 int __guc_dequeue (struct intel_engine_cs* const) ;
 int i915_request_completed (struct i915_request*) ;
 int memmove (struct i915_request**,struct i915_request**,int) ;
 int schedule_out (struct i915_request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void guc_submission_tasklet(unsigned long data)
{
 struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
 struct intel_engine_execlists * const execlists = &engine->execlists;
 struct i915_request **port, *rq;
 unsigned long flags;

 spin_lock_irqsave(&engine->active.lock, flags);

 for (port = execlists->inflight; (rq = *port); port++) {
  if (!i915_request_completed(rq))
   break;

  schedule_out(rq);
 }
 if (port != execlists->inflight) {
  int idx = port - execlists->inflight;
  int rem = ARRAY_SIZE(execlists->inflight) - idx;
  memmove(execlists->inflight, port, rem * sizeof(*port));
 }

 __guc_dequeue(engine);

 spin_unlock_irqrestore(&engine->active.lock, flags);
}
