
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_pool_node {int active; } ;
struct i915_request {int timeline; } ;


 int i915_active_ref (int *,int ,struct i915_request*) ;

__attribute__((used)) static inline int
intel_engine_pool_mark_active(struct intel_engine_pool_node *node,
         struct i915_request *rq)
{
 return i915_active_ref(&node->active, rq->timeline, rq);
}
