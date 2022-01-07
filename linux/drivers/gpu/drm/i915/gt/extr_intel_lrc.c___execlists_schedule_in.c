
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int gt; } ;
struct intel_context {int dummy; } ;
struct i915_request {struct intel_context* hw_context; struct intel_engine_cs* engine; } ;


 int INTEL_CONTEXT_SCHEDULE_IN ;
 int execlists_context_status_change (struct i915_request*,int ) ;
 int intel_context_get (struct intel_context* const) ;
 int intel_engine_context_in (struct intel_engine_cs* const) ;
 int intel_gt_pm_get (int ) ;

__attribute__((used)) static inline struct intel_engine_cs *
__execlists_schedule_in(struct i915_request *rq)
{
 struct intel_engine_cs * const engine = rq->engine;
 struct intel_context * const ce = rq->hw_context;

 intel_context_get(ce);

 intel_gt_pm_get(engine->gt);
 execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_IN);
 intel_engine_context_in(engine);

 return engine;
}
