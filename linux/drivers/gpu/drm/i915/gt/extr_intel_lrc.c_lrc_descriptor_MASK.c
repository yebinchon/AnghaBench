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
typedef  int u64 ;
struct intel_engine_cs {scalar_t__ class; scalar_t__ instance; int /*<<< orphan*/  i915; } ;
struct intel_context {int /*<<< orphan*/  state; int /*<<< orphan*/  vm; struct i915_gem_context* gem_context; } ;
struct i915_gem_context {scalar_t__ hw_id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int GEN11_ENGINE_CLASS_SHIFT ; 
 int GEN11_ENGINE_INSTANCE_SHIFT ; 
 scalar_t__ GEN11_MAX_CONTEXT_HW_ID ; 
 int GEN11_SW_CTX_ID_SHIFT ; 
 int /*<<< orphan*/  GEN11_SW_CTX_ID_WIDTH ; 
 int GEN8_CTX_ADDRESSING_MODE_SHIFT ; 
 int GEN8_CTX_ID_SHIFT ; 
 int /*<<< orphan*/  GEN8_CTX_ID_WIDTH ; 
 int GEN8_CTX_L3LLC_COHERENT ; 
 int GEN8_CTX_PRIVILEGE ; 
 int GEN8_CTX_VALID ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int INTEL_LEGACY_32B_CONTEXT ; 
 int INTEL_LEGACY_64B_CONTEXT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int LRC_HEADER_PAGES ; 
 scalar_t__ MAX_CONTEXT_HW_ID ; 
 int PAGE_SIZE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u64
FUNC7(struct intel_context *ce, struct intel_engine_cs *engine)
{
	struct i915_gem_context *ctx = ce->gem_context;
	u64 desc;

	FUNC1(MAX_CONTEXT_HW_ID > (FUNC0(GEN8_CTX_ID_WIDTH)));
	FUNC1(GEN11_MAX_CONTEXT_HW_ID > (FUNC0(GEN11_SW_CTX_ID_WIDTH)));

	desc = INTEL_LEGACY_32B_CONTEXT;
	if (FUNC6(ce->vm))
		desc = INTEL_LEGACY_64B_CONTEXT;
	desc <<= GEN8_CTX_ADDRESSING_MODE_SHIFT;

	desc |= GEN8_CTX_VALID | GEN8_CTX_PRIVILEGE;
	if (FUNC4(engine->i915, 8))
		desc |= GEN8_CTX_L3LLC_COHERENT;

	desc |= FUNC5(ce->state) + LRC_HEADER_PAGES * PAGE_SIZE;
								/* bits 12-31 */
	/*
	 * The following 32bits are copied into the OA reports (dword 2).
	 * Consider updating oa_get_render_ctx_id in i915_perf.c when changing
	 * anything below.
	 */
	if (FUNC3(engine->i915) >= 11) {
		FUNC2(ctx->hw_id >= FUNC0(GEN11_SW_CTX_ID_WIDTH));
		desc |= (u64)ctx->hw_id << GEN11_SW_CTX_ID_SHIFT;
								/* bits 37-47 */

		desc |= (u64)engine->instance << GEN11_ENGINE_INSTANCE_SHIFT;
								/* bits 48-53 */

		/* TODO: decide what to do with SW counter (bits 55-60) */

		desc |= (u64)engine->class << GEN11_ENGINE_CLASS_SHIFT;
								/* bits 61-63 */
	} else {
		FUNC2(ctx->hw_id >= FUNC0(GEN8_CTX_ID_WIDTH));
		desc |= (u64)ctx->hw_id << GEN8_CTX_ID_SHIFT;	/* bits 32-52 */
	}

	return desc;
}