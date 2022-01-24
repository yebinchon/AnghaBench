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
struct intel_engine_cs {int (* emit_flush ) (struct i915_request*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  mmio_base; } ;
struct i915_request {int /*<<< orphan*/  i915; TYPE_1__* hw_context; struct intel_engine_cs* engine; } ;
struct i915_ppgtt {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  vm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMIT_FLUSH ; 
 int /*<<< orphan*/  EMIT_INVALIDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int GEN8_3LVL_PDPES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int) ; 
 int MI_LRI_FORCE_POSTED ; 
 int /*<<< orphan*/  MI_NOOP ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_ppgtt* const,int) ; 
 struct i915_ppgtt* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_request*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (struct i915_request*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const) ; 
 int FUNC13 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct i915_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const) ; 

__attribute__((used)) static int FUNC18(struct i915_request *rq)
{
	const struct intel_engine_cs * const engine = rq->engine;
	struct i915_ppgtt * const ppgtt = FUNC8(rq->hw_context->vm);
	int err, i;
	u32 *cs;

	FUNC0(FUNC11(rq->i915));

	/*
	 * Beware ye of the dragons, this sequence is magic!
	 *
	 * Small changes to this sequence can cause anything from
	 * GPU hangs to forcewake errors and machine lockups!
	 */

	/* Flush any residual operations from the context load */
	err = engine->emit_flush(rq, EMIT_FLUSH);
	if (err)
		return err;

	/* Magic required to prevent forcewake errors! */
	err = engine->emit_flush(rq, EMIT_INVALIDATE);
	if (err)
		return err;

	cs = FUNC10(rq, 4 * GEN8_3LVL_PDPES + 2);
	if (FUNC3(cs))
		return FUNC5(cs);

	/* Ensure the LRI have landed before we invalidate & continue */
	*cs++ = FUNC4(2 * GEN8_3LVL_PDPES) | MI_LRI_FORCE_POSTED;
	for (i = GEN8_3LVL_PDPES; i--; ) {
		const dma_addr_t pd_daddr = FUNC7(ppgtt, i);
		u32 base = engine->mmio_base;

		*cs++ = FUNC6(FUNC2(base, i));
		*cs++ = FUNC17(pd_daddr);
		*cs++ = FUNC6(FUNC1(base, i));
		*cs++ = FUNC12(pd_daddr);
	}
	*cs++ = MI_NOOP;

	FUNC9(rq, cs);

	/* Be doubly sure the LRI have landed before proceeding */
	err = engine->emit_flush(rq, EMIT_FLUSH);
	if (err)
		return err;

	/* Re-invalidate the TLB for luck */
	return engine->emit_flush(rq, EMIT_INVALIDATE);
}