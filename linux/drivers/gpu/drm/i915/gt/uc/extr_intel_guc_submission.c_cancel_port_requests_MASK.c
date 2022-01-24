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
struct intel_engine_execlists {int /*<<< orphan*/  inflight; struct i915_request** active; } ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 struct i915_request** FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_request*) ; 

__attribute__((used)) static void
FUNC2(struct intel_engine_execlists * const execlists)
{
	struct i915_request * const *port, *rq;

	/* Note we are only using the inflight and not the pending queue */

	for (port = execlists->active; (rq = *port); port++)
		FUNC1(rq);
	execlists->active =
		FUNC0(execlists->inflight, 0, sizeof(execlists->inflight));
}