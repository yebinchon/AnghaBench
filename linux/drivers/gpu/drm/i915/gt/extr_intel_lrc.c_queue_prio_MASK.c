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
struct rb_node {int dummy; } ;
struct intel_engine_execlists {int /*<<< orphan*/  queue; } ;
struct i915_priolist {int priority; int /*<<< orphan*/  used; } ;

/* Variables and functions */
 int I915_USER_PRIORITY_SHIFT ; 
 int INT_MIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct rb_node* FUNC1 (int /*<<< orphan*/ *) ; 
 struct i915_priolist* FUNC2 (struct rb_node*) ; 

__attribute__((used)) static int FUNC3(const struct intel_engine_execlists *execlists)
{
	struct i915_priolist *p;
	struct rb_node *rb;

	rb = FUNC1(&execlists->queue);
	if (!rb)
		return INT_MIN;

	/*
	 * As the priolist[] are inverted, with the highest priority in [0],
	 * we have to flip the index value to become priority.
	 */
	p = FUNC2(rb);
	return ((p->priority + 1) << I915_USER_PRIORITY_SHIFT) - FUNC0(p->used);
}