#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_engine_cs {scalar_t__ wakeref_serial; scalar_t__ serial; int /*<<< orphan*/  kernel_context; int /*<<< orphan*/  wakeref; int /*<<< orphan*/  gt; } ;
struct TYPE_3__ {int /*<<< orphan*/  priority; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct i915_request {TYPE_2__ sched; int /*<<< orphan*/  timeline; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  I915_PRIORITY_UNPREEMPTABLE ; 
 scalar_t__ FUNC0 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_request*) ; 
 struct i915_request* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_request*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC10(struct intel_engine_cs *engine)
{
	struct i915_request *rq;
	unsigned long flags;
	bool result = true;

	/* Already inside the kernel context, safe to power down. */
	if (engine->wakeref_serial == engine->serial)
		return true;

	/* GPU is pointing to the void, as good as in the kernel context. */
	if (FUNC8(engine->gt))
		return true;

	/*
	 * Note, we do this without taking the timeline->mutex. We cannot
	 * as we may be called while retiring the kernel context and so
	 * already underneath the timeline->mutex. Instead we rely on the
	 * exclusive property of the __engine_park that prevents anyone
	 * else from creating a request on this engine. This also requires
	 * that the ring is empty and we avoid any waits while constructing
	 * the context, as they assume protection by the timeline->mutex.
	 * This should hold true as we can only park the engine after
	 * retiring the last request, thus all rings should be empty and
	 * all timelines idle.
	 */
	flags = FUNC5(engine->kernel_context);

	rq = FUNC2(engine->kernel_context, GFP_NOWAIT);
	if (FUNC0(rq))
		/* Context switch failed, hope for the best! Maybe reset? */
		goto out_unlock;

	FUNC9(rq->timeline);

	/* Check again on the next retirement. */
	engine->wakeref_serial = engine->serial + 1;
	FUNC7(rq);

	/* Install ourselves as a preemption barrier */
	rq->sched.attr.priority = I915_PRIORITY_UNPREEMPTABLE;
	FUNC1(rq);

	/* Release our exclusive hold on the engine */
	FUNC4(&engine->wakeref);
	FUNC3(rq, NULL);

	result = false;
out_unlock:
	FUNC6(engine->kernel_context, flags);
	return result;
}