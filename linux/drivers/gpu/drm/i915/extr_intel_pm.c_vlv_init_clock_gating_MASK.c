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
 int CHICKEN3_DGMG_DONE_FIX_DISABLE ; 
 int CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE ; 
 int DOP_CLOCK_GATING_DISABLE ; 
 int GCFG_DIS ; 
 int GEN6_RCZUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN6_UCGCTL2 ; 
 int /*<<< orphan*/  GEN6_WIZ_HASHING_16x4 ; 
 int /*<<< orphan*/  GEN6_WIZ_HASHING_MASK ; 
 int /*<<< orphan*/  GEN7_GT_MODE ; 
 int /*<<< orphan*/  GEN7_HALF_SLICE_CHICKEN1 ; 
 int GEN7_L3BANK2X_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN7_L3SQCREG1 ; 
 int /*<<< orphan*/  GEN7_L3SQCREG4 ; 
 int GEN7_MAX_PS_THREAD_DEP ; 
 int GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE ; 
 int /*<<< orphan*/  GEN7_ROW_CHICKEN2 ; 
 int /*<<< orphan*/  GEN7_SQ_CHICKEN_MBCUNIT_CONFIG ; 
 int GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB ; 
 int /*<<< orphan*/  GEN7_UCGCTL4 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IVB_CHICKEN3 ; 
 int L3SQ_URB_READ_CAM_MATCH_DISABLE ; 
 int PIXEL_SUBSPAN_COLLECT_OPT_DISABLE ; 
 int /*<<< orphan*/  RC_OP_FLUSH_ENABLE ; 
 int VLV_B0_WA_L3SQCREG1_VALUE ; 
 int /*<<< orphan*/  VLV_GUNIT_CLOCK_GATE ; 
 int /*<<< orphan*/  _3D_CHICKEN3 ; 
 int _3D_CHICKEN_SF_DISABLE_OBJEND_CULL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv)
{
	/* WaDisableEarlyCull:vlv */
	FUNC1(_3D_CHICKEN3,
		   FUNC3(_3D_CHICKEN_SF_DISABLE_OBJEND_CULL));

	/* WaDisableBackToBackFlipFix:vlv */
	FUNC1(IVB_CHICKEN3,
		   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE |
		   CHICKEN3_DGMG_DONE_FIX_DISABLE);

	/* WaPsdDispatchEnable:vlv */
	/* WaDisablePSDDualDispatchEnable:vlv */
	FUNC1(GEN7_HALF_SLICE_CHICKEN1,
		   FUNC3(GEN7_MAX_PS_THREAD_DEP |
				      GEN7_PSD_SINGLE_PORT_DISPATCH_ENABLE));

	/* WaDisable_RenderCache_OperationalFlush:vlv */
	FUNC1(CACHE_MODE_0_GEN7, FUNC2(RC_OP_FLUSH_ENABLE));

	/* WaForceL3Serialization:vlv */
	FUNC1(GEN7_L3SQCREG4, FUNC0(GEN7_L3SQCREG4) &
		   ~L3SQ_URB_READ_CAM_MATCH_DISABLE);

	/* WaDisableDopClockGating:vlv */
	FUNC1(GEN7_ROW_CHICKEN2,
		   FUNC3(DOP_CLOCK_GATING_DISABLE));

	/* This is required by WaCatErrorRejectionIssue:vlv */
	FUNC1(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
		   FUNC0(GEN7_SQ_CHICKEN_MBCUNIT_CONFIG) |
		   GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);

	FUNC5(dev_priv);

	/*
	 * According to the spec, bit 13 (RCZUNIT) must be set on IVB.
	 * This implements the WaDisableRCZUnitClockGating:vlv workaround.
	 */
	FUNC1(GEN6_UCGCTL2,
		   GEN6_RCZUNIT_CLOCK_GATE_DISABLE);

	/* WaDisableL3Bank2xClockGate:vlv
	 * Disabling L3 clock gating- MMIO 940c[25] = 1
	 * Set bit 25, to disable L3_BANK_2x_CLK_GATING */
	FUNC1(GEN7_UCGCTL4,
		   FUNC0(GEN7_UCGCTL4) | GEN7_L3BANK2X_CLOCK_GATE_DISABLE);

	/*
	 * BSpec says this must be set, even though
	 * WaDisable4x2SubspanOptimization isn't listed for VLV.
	 */
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

	/*
	 * WaIncreaseL3CreditsForVLVB0:vlv
	 * This is the hardware default actually.
	 */
	FUNC1(GEN7_L3SQCREG1, VLV_B0_WA_L3SQCREG1_VALUE);

	/*
	 * WaDisableVLVClockGating_VBIIssue:vlv
	 * Disable clock gating on th GCFG unit to prevent a delay
	 * in the reporting of vblank events.
	 */
	FUNC1(VLV_GUNIT_CLOCK_GATE, GCFG_DIS);
}