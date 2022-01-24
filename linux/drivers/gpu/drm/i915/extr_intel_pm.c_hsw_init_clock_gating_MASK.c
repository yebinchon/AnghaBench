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
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_MODE_0_GEN7 ; 
 int /*<<< orphan*/  CACHE_MODE_1 ; 
 int /*<<< orphan*/  GAM_ECOCHK ; 
 int /*<<< orphan*/  GEN6_WIZ_HASHING_16x4 ; 
 int /*<<< orphan*/  GEN6_WIZ_HASHING_MASK ; 
 int /*<<< orphan*/  GEN7_FF_THREAD_MODE ; 
 int GEN7_FF_VS_REF_CNT_FFME ; 
 int /*<<< orphan*/  GEN7_GT_MODE ; 
 int /*<<< orphan*/  GEN7_SQ_CHICKEN_MBCUNIT_CONFIG ; 
 int GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB ; 
 int /*<<< orphan*/  HALF_SLICE_CHICKEN3 ; 
 int /*<<< orphan*/  HIZ_RAW_STALL_OPT_DISABLE ; 
 int HSW_ECOCHK_ARB_PRIO_SOL ; 
 int /*<<< orphan*/  HSW_ROW_CHICKEN3 ; 
 int /*<<< orphan*/  HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE ; 
 int /*<<< orphan*/  HSW_SAMPLE_C_PERFORMANCE ; 
 int /*<<< orphan*/  HSW_SCRATCH1 ; 
 int HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PIXEL_SUBSPAN_COLLECT_OPT_DISABLE ; 
 int /*<<< orphan*/  RC_OP_FLUSH_ENABLE ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	/* L3 caching of data atomics doesn't work -- disable it. */
	FUNC1(HSW_SCRATCH1, HSW_SCRATCH1_L3_DATA_ATOMICS_DISABLE);
	FUNC1(HSW_ROW_CHICKEN3,
		   FUNC3(HSW_ROW_CHICKEN3_L3_GLOBAL_ATOMICS_DISABLE));

	/* This is required by WaCatErrorRejectionIssue:hsw */
	FUNC1(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
			FUNC0(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
			GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);

	/* WaVSRefCountFullforceMissDisable:hsw */
	FUNC1(GEN7_FF_THREAD_MODE,
		   FUNC0(GEN7_FF_THREAD_MODE) & ~GEN7_FF_VS_REF_CNT_FFME);

	/* WaDisable_RenderCache_OperationalFlush:hsw */
	FUNC1(CACHE_MODE_0_GEN7, FUNC2(RC_OP_FLUSH_ENABLE));

	/* enable HiZ Raw Stall Optimization */
	FUNC1(CACHE_MODE_0_GEN7,
		   FUNC2(HIZ_RAW_STALL_OPT_DISABLE));

	/* WaDisable4x2SubspanOptimization:hsw */
	FUNC1(CACHE_MODE_1,
		   FUNC3(PIXEL_SUBSPAN_COLLECT_OPT_DISABLE));

	/*
	 * BSpec recommends 8x4 when MSAA is used,
	 * however in practice 16x4 seems fastest.
	 *
	 * Note that PS/WM thread counts depend on the WIZ hashing
	 * disable bit, which we don't touch here, but it's good
	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
	 */
	FUNC1(GEN7_GT_MODE,
		   FUNC4(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4));

	/* WaSampleCChickenBitEnable:hsw */
	FUNC1(HALF_SLICE_CHICKEN3,
		   FUNC3(HSW_SAMPLE_C_PERFORMANCE));

	/* WaSwitchSolVfFArbitrationPriority:hsw */
	FUNC1(GAM_ECOCHK, FUNC0(GAM_ECOCHK) | HSW_ECOCHK_ARB_PRIO_SOL);

	FUNC5(dev_priv);
}