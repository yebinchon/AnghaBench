
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline_cacheline {int active; } ;
struct i915_request {int timeline; } ;


 int i915_active_ref (int *,int ,struct i915_request*) ;

__attribute__((used)) static int cacheline_ref(struct intel_timeline_cacheline *cl,
    struct i915_request *rq)
{
 return i915_active_ref(&cl->active, rq->timeline, rq);
}
