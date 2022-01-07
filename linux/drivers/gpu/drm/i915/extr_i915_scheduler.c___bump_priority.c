
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_sched_attr {unsigned int priority; } ;
struct i915_sched_node {struct i915_sched_attr attr; } ;


 int __i915_schedule (struct i915_sched_node*,struct i915_sched_attr*) ;

__attribute__((used)) static void __bump_priority(struct i915_sched_node *node, unsigned int bump)
{
 struct i915_sched_attr attr = node->attr;

 attr.priority |= bump;
 __i915_schedule(node, &attr);
}
