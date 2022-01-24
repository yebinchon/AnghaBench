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
struct i915_sched_node {int flags; int /*<<< orphan*/  signalers_list; int /*<<< orphan*/  waiters_list; } ;
struct i915_dependency {unsigned long flags; struct i915_sched_node* waiter; struct i915_sched_node* signaler; int /*<<< orphan*/  signal_link; int /*<<< orphan*/  wait_link; int /*<<< orphan*/  dfs_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long I915_DEPENDENCY_EXTERNAL ; 
 int I915_PRIORITY_MASK ; 
 int I915_SCHED_HAS_SEMAPHORE_CHAIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int __NO_PREEMPTION ; 
 int /*<<< orphan*/  FUNC2 (struct i915_sched_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_sched_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_sched_node*) ; 
 int /*<<< orphan*/  schedule_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

bool FUNC8(struct i915_sched_node *node,
				      struct i915_sched_node *signal,
				      struct i915_dependency *dep,
				      unsigned long flags)
{
	bool ret = false;

	FUNC6(&schedule_lock);

	if (!FUNC4(signal)) {
		FUNC1(&dep->dfs_link);
		FUNC3(&dep->wait_link, &signal->waiters_list);
		FUNC3(&dep->signal_link, &node->signalers_list);
		dep->signaler = signal;
		dep->waiter = node;
		dep->flags = flags;

		/* Keep track of whether anyone on this chain has a semaphore */
		if (signal->flags & I915_SCHED_HAS_SEMAPHORE_CHAIN &&
		    !FUNC5(signal))
			node->flags |= I915_SCHED_HAS_SEMAPHORE_CHAIN;

		/*
		 * As we do not allow WAIT to preempt inflight requests,
		 * once we have executed a request, along with triggering
		 * any execution callbacks, we must preserve its ordering
		 * within the non-preemptible FIFO.
		 */
		FUNC0(__NO_PREEMPTION & ~I915_PRIORITY_MASK);
		if (flags & I915_DEPENDENCY_EXTERNAL)
			FUNC2(signal, __NO_PREEMPTION);

		ret = true;
	}

	FUNC7(&schedule_lock);

	return ret;
}