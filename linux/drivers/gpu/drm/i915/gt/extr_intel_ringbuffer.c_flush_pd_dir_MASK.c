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
typedef  int /*<<< orphan*/  u32 ;
struct intel_engine_cs {int /*<<< orphan*/  gt; int /*<<< orphan*/  mmio_base; } ;
struct i915_request {struct intel_engine_cs* engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_GT_SCRATCH_FIELD_DEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int MI_SRM_LRM_GLOBAL_GTT ; 
 int MI_STORE_REGISTER_MEM ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct i915_request*,int) ; 

__attribute__((used)) static int FUNC7(struct i915_request *rq)
{
	const struct intel_engine_cs * const engine = rq->engine;
	u32 *cs;

	cs = FUNC6(rq, 4);
	if (FUNC0(cs))
		return FUNC1(cs);

	/* Stall until the page table load is complete */
	*cs++ = MI_STORE_REGISTER_MEM | MI_SRM_LRM_GLOBAL_GTT;
	*cs++ = FUNC3(FUNC2(engine->mmio_base));
	*cs++ = FUNC4(rq->engine->gt,
					INTEL_GT_SCRATCH_FIELD_DEFAULT);
	*cs++ = MI_NOOP;

	FUNC5(rq, cs);
	return 0;
}