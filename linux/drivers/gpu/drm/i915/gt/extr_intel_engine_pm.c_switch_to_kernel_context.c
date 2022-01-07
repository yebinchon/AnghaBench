
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_engine_cs {scalar_t__ wakeref_serial; scalar_t__ serial; int kernel_context; int wakeref; int gt; } ;
struct TYPE_3__ {int priority; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct i915_request {TYPE_2__ sched; int timeline; } ;


 int GFP_NOWAIT ;
 int I915_PRIORITY_UNPREEMPTABLE ;
 scalar_t__ IS_ERR (struct i915_request*) ;
 int __i915_request_commit (struct i915_request*) ;
 struct i915_request* __i915_request_create (int ,int ) ;
 int __i915_request_queue (struct i915_request*,int *) ;
 int __intel_wakeref_defer_park (int *) ;
 unsigned long __timeline_mark_lock (int ) ;
 int __timeline_mark_unlock (int ,unsigned long) ;
 int i915_request_add_active_barriers (struct i915_request*) ;
 scalar_t__ intel_gt_is_wedged (int ) ;
 int intel_timeline_enter (int ) ;

__attribute__((used)) static bool switch_to_kernel_context(struct intel_engine_cs *engine)
{
 struct i915_request *rq;
 unsigned long flags;
 bool result = 1;


 if (engine->wakeref_serial == engine->serial)
  return 1;


 if (intel_gt_is_wedged(engine->gt))
  return 1;
 flags = __timeline_mark_lock(engine->kernel_context);

 rq = __i915_request_create(engine->kernel_context, GFP_NOWAIT);
 if (IS_ERR(rq))

  goto out_unlock;

 intel_timeline_enter(rq->timeline);


 engine->wakeref_serial = engine->serial + 1;
 i915_request_add_active_barriers(rq);


 rq->sched.attr.priority = I915_PRIORITY_UNPREEMPTABLE;
 __i915_request_commit(rq);


 __intel_wakeref_defer_park(&engine->wakeref);
 __i915_request_queue(rq, ((void*)0));

 result = 0;
out_unlock:
 __timeline_mark_unlock(engine->kernel_context, flags);
 return result;
}
