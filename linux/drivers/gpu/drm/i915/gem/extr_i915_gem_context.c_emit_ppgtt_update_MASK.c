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
struct intel_engine_cs {int /*<<< orphan*/  i915; int /*<<< orphan*/  mmio_base; } ;
struct i915_request {struct intel_engine_cs* engine; TYPE_1__* hw_context; } ;
struct i915_ppgtt {int /*<<< orphan*/  pd; } ;
struct i915_address_space {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {struct i915_address_space* vm; } ;

/* Variables and functions */
 int GEN8_3LVL_PDPES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 void* MI_NOOP ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_ppgtt*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_ppgtt*,int) ; 
 scalar_t__ FUNC9 (struct i915_address_space*) ; 
 struct i915_ppgtt* FUNC10 (struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (struct i915_request*,int) ; 
 void* FUNC13 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 void* FUNC15 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC16(struct i915_request *rq, void *data)
{
	struct i915_address_space *vm = rq->hw_context->vm;
	struct intel_engine_cs *engine = rq->engine;
	u32 base = engine->mmio_base;
	u32 *cs;
	int i;

	if (FUNC9(vm)) {
		struct i915_ppgtt *ppgtt = FUNC10(vm);
		const dma_addr_t pd_daddr = FUNC14(ppgtt->pd);

		cs = FUNC12(rq, 6);
		if (FUNC3(cs))
			return FUNC5(cs);

		*cs++ = FUNC4(2);

		*cs++ = FUNC7(FUNC1(base, 0));
		*cs++ = FUNC15(pd_daddr);
		*cs++ = FUNC7(FUNC0(base, 0));
		*cs++ = FUNC13(pd_daddr);

		*cs++ = MI_NOOP;
		FUNC11(rq, cs);
	} else if (FUNC2(engine->i915)) {
		struct i915_ppgtt *ppgtt = FUNC10(vm);

		cs = FUNC12(rq, 4 * GEN8_3LVL_PDPES + 2);
		if (FUNC3(cs))
			return FUNC5(cs);

		*cs++ = FUNC4(2 * GEN8_3LVL_PDPES);
		for (i = GEN8_3LVL_PDPES; i--; ) {
			const dma_addr_t pd_daddr = FUNC8(ppgtt, i);

			*cs++ = FUNC7(FUNC1(base, i));
			*cs++ = FUNC15(pd_daddr);
			*cs++ = FUNC7(FUNC0(base, i));
			*cs++ = FUNC13(pd_daddr);
		}
		*cs++ = MI_NOOP;
		FUNC11(rq, cs);
	} else {
		/* ppGTT is not part of the legacy context image */
		FUNC6(FUNC10(vm));
	}

	return 0;
}