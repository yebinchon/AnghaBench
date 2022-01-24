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
typedef  int u32 ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_MODE_0_GEN7 ; 
 int /*<<< orphan*/  CACHE_MODE_1 ; 
 int CHICKEN3_DGMG_DONE_FIX_DISABLE ; 
 int CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE ; 
 int /*<<< orphan*/  DOP_CLOCK_GATING_DISABLE ; 
 int /*<<< orphan*/  GEN6_MBCUNIT_SNPCR ; 
 int GEN6_MBC_SNPCR_MASK ; 
 int GEN6_MBC_SNPCR_MED ; 
 int GEN6_RCZUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN6_UCGCTL2 ; 
 int /*<<< orphan*/  GEN6_WIZ_HASHING_16x4 ; 
 int /*<<< orphan*/  GEN6_WIZ_HASHING_MASK ; 
 int /*<<< orphan*/  GEN7_COMMON_SLICE_CHICKEN1 ; 
 int GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC ; 
 int /*<<< orphan*/  GEN7_GT_MODE ; 
 int /*<<< orphan*/  GEN7_HALF_SLICE_CHICKEN1 ; 
 int /*<<< orphan*/  GEN7_L3CNTLREG1 ; 
 int /*<<< orphan*/  GEN7_L3SQCREG4 ; 
 int /*<<< orphan*/  GEN7_L3_CHICKEN_MODE_REGISTER ; 
 int /*<<< orphan*/  GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE ; 
 int /*<<< orphan*/  GEN7_ROW_CHICKEN2 ; 
 int /*<<< orphan*/  GEN7_ROW_CHICKEN2_GT2 ; 
 int /*<<< orphan*/  GEN7_SQ_CHICKEN_MBCUNIT_CONFIG ; 
 int GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB ; 
 int GEN7_WA_FOR_GEN7_L3_CONTROL ; 
 int GEN7_WA_L3_CHICKEN_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  HIZ_RAW_STALL_OPT_DISABLE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ILK_DSPCLK_GATE_D ; 
 int ILK_VRHUNIT_CLOCK_GATE_DISABLE ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  IVB_CHICKEN3 ; 
 int L3SQ_URB_READ_CAM_MATCH_DISABLE ; 
 int /*<<< orphan*/  PIXEL_SUBSPAN_COLLECT_OPT_DISABLE ; 
 int /*<<< orphan*/  RC_OP_FLUSH_ENABLE ; 
 int /*<<< orphan*/  _3D_CHICKEN3 ; 
 int /*<<< orphan*/  _3D_CHICKEN_SF_DISABLE_OBJEND_CULL ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC8 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC11(struct drm_i915_private *dev_priv)
{
	u32 snpcr;

	FUNC2(ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);

	/* WaDisableEarlyCull:ivb */
	FUNC2(_3D_CHICKEN3,
		   FUNC5(_3D_CHICKEN_SF_DISABLE_OBJEND_CULL));

	/* WaDisableBackToBackFlipFix:ivb */
	FUNC2(IVB_CHICKEN3,
		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
		   CHICKEN3_DGMG_DONE_FIX_DISABLE);

	/* WaDisablePSDDualDispatchEnable:ivb */
	if (FUNC3(dev_priv))
		FUNC2(GEN7_HALF_SLICE_CHICKEN1,
			   FUNC5(GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE));

	/* WaDisable_RenderCache_OperationalFlush:ivb */
	FUNC2(CACHE_MODE_0_GEN7, FUNC4(RC_OP_FLUSH_ENABLE));

	/* Apply the WaDisableRHWOOptimizationForRenderHang:ivb workaround. */
	FUNC2(GEN7_COMMON_SLICE_CHICKEN1,
		   GEN7_CSC1_RHWO_OPT_DISABLE_IN_RCC);

	/* WaApplyL3ControlAndL3ChickenMode:ivb */
	FUNC2(GEN7_L3CNTLREG1,
			GEN7_WA_FOR_GEN7_L3_CONTROL);
	FUNC2(GEN7_L3_CHICKEN_MODE_REGISTER,
		   GEN7_WA_L3_CHICKEN_MODE);
	if (FUNC3(dev_priv))
		FUNC2(GEN7_ROW_CHICKEN2,
			   FUNC5(DOP_CLOCK_GATING_DISABLE));
	else {
		/* must write both registers */
		FUNC2(GEN7_ROW_CHICKEN2,
			   FUNC5(DOP_CLOCK_GATING_DISABLE));
		FUNC2(GEN7_ROW_CHICKEN2_GT2,
			   FUNC5(DOP_CLOCK_GATING_DISABLE));
	}

	/* WaForceL3Serialization:ivb */
	FUNC2(GEN7_L3SQCREG4, FUNC1(GEN7_L3SQCREG4) &
		   ~L3SQ_URB_READ_CAM_MATCH_DISABLE);

	/*
	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
	 * This implements the WaDisableRCZUnitClockGating:ivb workaround.
	 */
	FUNC2(GEN6_UCGCTL2,
		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);

	/* This is required by WaCatErrorRejectionIssue:ivb */
	FUNC2(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
			FUNC1(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
			GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);

	FUNC8(dev_priv);

	FUNC10(dev_priv);

	if (0) { /* causes HiZ corruption on ivb:gt1 */
		/* enable HiZ Raw Stall Optimization */
		FUNC2(CACHE_MODE_0_GEN7,
			   FUNC4(HIZ_RAW_STALL_OPT_DISABLE));
	}

	/* WaDisable4x2SubspanOptimization:ivb */
	FUNC2(CACHE_MODE_1,
		   FUNC5(PIXEL_SUBSPAN_COLLECT_OPT_DISABLE));

	/*
	 * BSpec recommends 8x4 when MSAA is used,
	 * however in practice 16x4 seems fastest.
	 *
	 * Note that PS/WM thread counts depend on the WIZ hashing
	 * disable bit, which we don't touch here, but it's good
	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
	 */
	FUNC2(GEN7_GT_MODE,
		   FUNC6(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4));

	snpcr = FUNC1(GEN6_MBCUNIT_SNPCR);
	snpcr &= ~GEN6_MBC_SNPCR_MASK;
	snpcr |= GEN6_MBC_SNPCR_MED;
	FUNC2(GEN6_MBCUNIT_SNPCR, snpcr);

	if (!FUNC0(dev_priv))
		FUNC7(dev_priv);

	FUNC9(dev_priv);
}