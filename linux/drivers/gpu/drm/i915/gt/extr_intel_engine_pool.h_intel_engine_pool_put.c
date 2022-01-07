
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_pool_node {int active; } ;


 int i915_active_release (int *) ;

__attribute__((used)) static inline void
intel_engine_pool_put(struct intel_engine_pool_node *node)
{
 i915_active_release(&node->active);
}
