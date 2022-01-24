#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct i915_sched_node {int dummy; } ;
struct i915_dependency {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int I915_DEPENDENCY_ALLOC ; 
 int I915_DEPENDENCY_EXTERNAL ; 
 int /*<<< orphan*/  FUNC0 (struct i915_sched_node*,struct i915_sched_node*,struct i915_dependency*,int) ; 
 struct i915_dependency* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct i915_dependency*) ; 

int FUNC3(struct i915_sched_node *node,
				   struct i915_sched_node *signal)
{
	struct i915_dependency *dep;

	dep = FUNC1();
	if (!dep)
		return -ENOMEM;

	if (!FUNC0(node, signal, dep,
					      I915_DEPENDENCY_EXTERNAL |
					      I915_DEPENDENCY_ALLOC))
		FUNC2(dep);

	return 0;
}