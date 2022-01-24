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
typedef  int /*<<< orphan*/  u32 ;
struct intel_engine_cs {int /*<<< orphan*/  mmio_base; } ;
struct i915_request {struct intel_engine_cs* engine; } ;
struct i915_ppgtt {int /*<<< orphan*/  pd; } ;
struct TYPE_2__ {int ggtt_offset; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  PP_DIR_DCLV_2G ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (struct i915_request*,int) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i915_request *rq, const struct i915_ppgtt *ppgtt)
{
	const struct intel_engine_cs * const engine = rq->engine;
	u32 *cs;

	cs = FUNC7(rq, 6);
	if (FUNC0(cs))
		return FUNC2(cs);

	*cs++ = FUNC1(1);
	*cs++ = FUNC5(FUNC4(engine->mmio_base));
	*cs++ = PP_DIR_DCLV_2G;

	*cs++ = FUNC1(1);
	*cs++ = FUNC5(FUNC3(engine->mmio_base));
	*cs++ = FUNC8(ppgtt->pd)->ggtt_offset << 10;

	FUNC6(rq, cs);

	return 0;
}