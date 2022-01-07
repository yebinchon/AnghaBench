
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sched_node {int dummy; } ;
struct i915_dependency {int dummy; } ;


 int ENOMEM ;
 int I915_DEPENDENCY_ALLOC ;
 int I915_DEPENDENCY_EXTERNAL ;
 int __i915_sched_node_add_dependency (struct i915_sched_node*,struct i915_sched_node*,struct i915_dependency*,int) ;
 struct i915_dependency* i915_dependency_alloc () ;
 int i915_dependency_free (struct i915_dependency*) ;

int i915_sched_node_add_dependency(struct i915_sched_node *node,
       struct i915_sched_node *signal)
{
 struct i915_dependency *dep;

 dep = i915_dependency_alloc();
 if (!dep)
  return -ENOMEM;

 if (!__i915_sched_node_add_dependency(node, signal, dep,
           I915_DEPENDENCY_EXTERNAL |
           I915_DEPENDENCY_ALLOC))
  i915_dependency_free(dep);

 return 0;
}
