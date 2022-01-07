
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int gt; } ;


 int i915_request_put (struct i915_request*) ;
 int intel_gt_pm_put (int ) ;
 int trace_i915_request_out (struct i915_request*) ;

__attribute__((used)) static void schedule_out(struct i915_request *rq)
{
 trace_i915_request_out(rq);

 intel_gt_pm_put(rq->engine->gt);
 i915_request_put(rq);
}
