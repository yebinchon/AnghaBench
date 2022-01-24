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
struct intel_engine_execlists {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {TYPE_1__ active; struct intel_engine_execlists execlists; } ;
struct i915_request {int /*<<< orphan*/  head; int /*<<< orphan*/  hw_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_request*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_execlists* const) ; 
 struct i915_request* FUNC2 (struct intel_engine_execlists* const) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_engine_cs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct intel_engine_cs *engine, bool stalled)
{
	struct intel_engine_execlists * const execlists = &engine->execlists;
	struct i915_request *rq;
	unsigned long flags;

	FUNC5(&engine->active.lock, flags);

	FUNC1(execlists);

	/* Push back any incomplete requests for replay after the reset. */
	rq = FUNC2(execlists);
	if (!rq)
		goto out_unlock;

	if (!FUNC3(rq))
		stalled = false;

	FUNC0(rq, stalled);
	FUNC4(engine, rq->hw_context, rq->head, stalled);

out_unlock:
	FUNC6(&engine->active.lock, flags);
}