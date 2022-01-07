
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_engine_execlists {struct i915_request** pending; struct i915_request** active; } ;
struct TYPE_2__ {int lock; int enabled_at; int start; scalar_t__ active; int enabled; } ;
struct intel_engine_cs {TYPE_1__ stats; struct intel_engine_execlists execlists; } ;
struct i915_request {int hw_context; } ;


 int EBUSY ;
 int ENODEV ;
 int execlists_active_lock_bh (struct intel_engine_execlists*) ;
 int execlists_active_unlock_bh (struct intel_engine_execlists*) ;
 int intel_context_inflight_count (int ) ;
 int intel_engine_supports_stats (struct intel_engine_cs*) ;
 int ktime_get () ;
 scalar_t__ unlikely (int) ;
 int write_seqlock_irqsave (int *,unsigned long) ;
 int write_sequnlock_irqrestore (int *,unsigned long) ;

int intel_enable_engine_stats(struct intel_engine_cs *engine)
{
 struct intel_engine_execlists *execlists = &engine->execlists;
 unsigned long flags;
 int err = 0;

 if (!intel_engine_supports_stats(engine))
  return -ENODEV;

 execlists_active_lock_bh(execlists);
 write_seqlock_irqsave(&engine->stats.lock, flags);

 if (unlikely(engine->stats.enabled == ~0)) {
  err = -EBUSY;
  goto unlock;
 }

 if (engine->stats.enabled++ == 0) {
  struct i915_request * const *port;
  struct i915_request *rq;

  engine->stats.enabled_at = ktime_get();


  for (port = execlists->active; (rq = *port); port++)
   engine->stats.active++;

  for (port = execlists->pending; (rq = *port); port++) {

   if (!intel_context_inflight_count(rq->hw_context))
    engine->stats.active++;
  }

  if (engine->stats.active)
   engine->stats.start = engine->stats.enabled_at;
 }

unlock:
 write_sequnlock_irqrestore(&engine->stats.lock, flags);
 execlists_active_unlock_bh(execlists);

 return err;
}
