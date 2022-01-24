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
struct intel_engine_execlists {struct i915_request** inflight; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {TYPE_1__ active; struct intel_engine_execlists execlists; } ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct i915_request**) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_engine_cs* const) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request**,struct i915_request**,int) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(unsigned long data)
{
	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
	struct intel_engine_execlists * const execlists = &engine->execlists;
	struct i915_request **port, *rq;
	unsigned long flags;

	FUNC5(&engine->active.lock, flags);

	for (port = execlists->inflight; (rq = *port); port++) {
		if (!FUNC2(rq))
			break;

		FUNC4(rq);
	}
	if (port != execlists->inflight) {
		int idx = port - execlists->inflight;
		int rem = FUNC0(execlists->inflight) - idx;
		FUNC3(execlists->inflight, port, rem * sizeof(*port));
	}

	FUNC1(engine);

	FUNC6(&engine->active.lock, flags);
}