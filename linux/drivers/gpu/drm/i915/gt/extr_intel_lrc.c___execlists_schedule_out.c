
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int gt; } ;
struct intel_context {struct intel_engine_cs* const engine; } ;
struct i915_request {struct intel_context* hw_context; } ;


 int INTEL_CONTEXT_SCHEDULE_OUT ;
 int execlists_context_status_change (struct i915_request*,int ) ;
 int intel_context_put (struct intel_context* const) ;
 int intel_engine_context_out (struct intel_engine_cs* const) ;
 int intel_gt_pm_put (int ) ;
 int kick_siblings (struct i915_request*,struct intel_context* const) ;

__attribute__((used)) static inline void
__execlists_schedule_out(struct i915_request *rq,
    struct intel_engine_cs * const engine)
{
 struct intel_context * const ce = rq->hw_context;

 intel_engine_context_out(engine);
 execlists_context_status_change(rq, INTEL_CONTEXT_SCHEDULE_OUT);
 intel_gt_pm_put(engine->gt);
 if (ce->engine != engine)
  kick_siblings(rq, ce);

 intel_context_put(ce);
}
