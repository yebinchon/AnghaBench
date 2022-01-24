#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tasklet; struct i915_request** active; } ;
struct intel_engine_cs {TYPE_1__ execlists; } ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_request const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct intel_engine_cs *engine, int prio)
{
	const struct i915_request *inflight = *engine->execlists.active;

	/*
	 * If we are already the currently executing context, don't
	 * bother evaluating if we should preempt ourselves, or if
	 * we expect nothing to change as a result of running the
	 * tasklet, i.e. we have not change the priority queue
	 * sufficiently to oust the running context.
	 */
	if (!inflight || !FUNC0(prio, FUNC1(inflight)))
		return;

	FUNC2(&engine->execlists.tasklet);
}