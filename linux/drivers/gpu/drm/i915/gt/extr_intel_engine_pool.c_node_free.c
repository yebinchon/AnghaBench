
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_pool_node {int active; int obj; } ;


 int i915_active_fini (int *) ;
 int i915_gem_object_put (int ) ;
 int kfree (struct intel_engine_pool_node*) ;

__attribute__((used)) static void node_free(struct intel_engine_pool_node *node)
{
 i915_gem_object_put(node->obj);
 i915_active_fini(&node->active);
 kfree(node);
}
