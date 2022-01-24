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
struct i915_sched_attr {unsigned int priority; } ;
struct i915_sched_node {struct i915_sched_attr attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_sched_node*,struct i915_sched_attr*) ; 

__attribute__((used)) static void FUNC1(struct i915_sched_node *node, unsigned int bump)
{
	struct i915_sched_attr attr = node->attr;

	attr.priority |= bump;
	FUNC0(node, &attr);
}