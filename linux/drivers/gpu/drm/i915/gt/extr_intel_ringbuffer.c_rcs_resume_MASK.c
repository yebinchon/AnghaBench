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
struct intel_engine_cs {struct drm_i915_private* i915; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_FLIP_PERF_DISABLE ; 
 int /*<<< orphan*/  CACHE_MODE_0 ; 
 int /*<<< orphan*/  CM0_STC_EVICT_DISABLE_LRA_SNB ; 
 int /*<<< orphan*/  ECOSKPD ; 
 int /*<<< orphan*/  ECO_CONSTANT_BUFFER_SR_DISABLE ; 
 int /*<<< orphan*/  GFX_MODE ; 
 int /*<<< orphan*/  GFX_MODE_GEN7 ; 
 int /*<<< orphan*/  GFX_REPLAY_MODE ; 
 int /*<<< orphan*/  GFX_TLB_INVALIDATE_EXPLICIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INSTPM ; 
 int /*<<< orphan*/  INSTPM_FORCE_ORDERING ; 
 scalar_t__ FUNC1 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  MI_MODE ; 
 int /*<<< orphan*/  VS_TIMER_DISPATCH ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct intel_engine_cs*) ; 

__attribute__((used)) static int FUNC6(struct intel_engine_cs *engine)
{
	struct drm_i915_private *dev_priv = engine->i915;

	/*
	 * Disable CONSTANT_BUFFER before it is loaded from the context
	 * image. For as it is loaded, it is executed and the stored
	 * address may no longer be valid, leading to a GPU hang.
	 *
	 * This imposes the requirement that userspace reload their
	 * CONSTANT_BUFFER on every batch, fortunately a requirement
	 * they are already accustomed to from before contexts were
	 * enabled.
	 */
	if (FUNC1(dev_priv, 4))
		FUNC0(ECOSKPD,
			   FUNC4(ECO_CONSTANT_BUFFER_SR_DISABLE));

	/* WaTimedSingleVertexDispatch:cl,bw,ctg,elk,ilk,snb */
	if (FUNC2(dev_priv, 4, 6))
		FUNC0(MI_MODE, FUNC4(VS_TIMER_DISPATCH));

	/* We need to disable the AsyncFlip performance optimisations in order
	 * to use MI_WAIT_FOR_EVENT within the CS. It should already be
	 * programmed to '1' on all products.
	 *
	 * WaDisableAsyncFlipPerfMode:snb,ivb,hsw,vlv
	 */
	if (FUNC2(dev_priv, 6, 7))
		FUNC0(MI_MODE, FUNC4(ASYNC_FLIP_PERF_DISABLE));

	/* Required for the hardware to program scanline values for waiting */
	/* WaEnableFlushTlbInvalidationMode:snb */
	if (FUNC1(dev_priv, 6))
		FUNC0(GFX_MODE,
			   FUNC4(GFX_TLB_INVALIDATE_EXPLICIT));

	/* WaBCSVCSTlbInvalidationMode:ivb,vlv,hsw */
	if (FUNC1(dev_priv, 7))
		FUNC0(GFX_MODE_GEN7,
			   FUNC4(GFX_TLB_INVALIDATE_EXPLICIT) |
			   FUNC4(GFX_REPLAY_MODE));

	if (FUNC1(dev_priv, 6)) {
		/* From the Sandybridge PRM, volume 1 part 3, page 24:
		 * "If this bit is set, STCunit will have LRA as replacement
		 *  policy. [...] This bit must be reset.  LRA replacement
		 *  policy is not supported."
		 */
		FUNC0(CACHE_MODE_0,
			   FUNC3(CM0_STC_EVICT_DISABLE_LRA_SNB));
	}

	if (FUNC2(dev_priv, 6, 7))
		FUNC0(INSTPM, FUNC4(INSTPM_FORCE_ORDERING));

	return FUNC5(engine);
}