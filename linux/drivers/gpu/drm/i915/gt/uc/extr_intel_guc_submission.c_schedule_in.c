
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int gt; } ;


 struct i915_request* i915_request_get (struct i915_request*) ;
 int intel_gt_pm_get (int ) ;
 int trace_i915_request_in (struct i915_request*,int) ;

__attribute__((used)) static struct i915_request *schedule_in(struct i915_request *rq, int idx)
{
 trace_i915_request_in(rq, idx);
 intel_gt_pm_get(rq->engine->gt);
 return i915_request_get(rq);
}
