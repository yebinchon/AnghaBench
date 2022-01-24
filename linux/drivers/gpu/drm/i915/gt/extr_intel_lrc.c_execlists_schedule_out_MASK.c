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
struct intel_engine_cs {int dummy; } ;
struct intel_context {int /*<<< orphan*/  inflight; } ;
struct i915_request {struct intel_context* hw_context; } ;

/* Variables and functions */
 struct intel_engine_cs* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_request*,struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 struct intel_engine_cs* FUNC3 (struct intel_engine_cs*) ; 
 scalar_t__ FUNC4 (struct intel_engine_cs*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct intel_engine_cs**,struct intel_engine_cs*) ; 

__attribute__((used)) static inline void
FUNC7(struct i915_request *rq)
{
	struct intel_context * const ce = rq->hw_context;
	struct intel_engine_cs *cur, *old;

	FUNC5(rq);

	old = FUNC0(ce->inflight);
	do
		cur = FUNC4(old, 2) ? FUNC3(old) : NULL;
	while (!FUNC6(&ce->inflight, &old, cur));
	if (!cur)
		FUNC1(rq, old);

	FUNC2(rq);
}