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
struct i915_request {scalar_t__ engine; struct intel_context* hw_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct intel_engine_cs* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 struct i915_request* FUNC4 (struct i915_request*) ; 
 scalar_t__ FUNC5 (struct intel_context* const) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_request*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct intel_engine_cs**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct i915_request *
FUNC10(struct i915_request *rq, int idx)
{
	struct intel_context * const ce = rq->hw_context;
	struct intel_engine_cs *old;

	FUNC0(!FUNC6(rq->engine));
	FUNC8(rq, idx);

	old = FUNC1(ce->inflight);
	do {
		if (!old) {
			FUNC2(ce->inflight, FUNC3(rq));
			break;
		}
	} while (!FUNC9(&ce->inflight, &old, FUNC7(old)));

	FUNC0(FUNC5(ce) != rq->engine);
	return FUNC4(rq);
}