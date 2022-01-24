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
 int /*<<< orphan*/  CACHE_MODE_0 ; 
 int /*<<< orphan*/  CM0_STC_EVICT_DISABLE_LRA_SNB ; 
 int GEN6_BLBUNIT_CLOCK_GATE_DISABLE ; 
 int GEN6_CSUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN6_GT_MODE ; 
 int GEN6_RCCUNIT_CLOCK_GATE_DISABLE ; 
 int GEN6_RCPBUNIT_CLOCK_GATE_DISABLE ; 
 int /*<<< orphan*/  GEN6_UCGCTL1 ; 
 int /*<<< orphan*/  GEN6_UCGCTL2 ; 
 int /*<<< orphan*/  GEN6_WIZ_HASHING_16x4 ; 
 int /*<<< orphan*/  GEN6_WIZ_HASHING_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ILK_DISPLAY_CHICKEN1 ; 
 int /*<<< orphan*/  ILK_DISPLAY_CHICKEN2 ; 
 int ILK_DPARBUNIT_CLOCK_GATE_ENABLE ; 
 int ILK_DPARB_GATE ; 
 int ILK_DPFDUNIT_CLOCK_GATE_ENABLE ; 
 int /*<<< orphan*/  ILK_DSPCLK_GATE_D ; 
 int ILK_ELPIN_409_SELECT ; 
 int ILK_FBCQ_DIS ; 
 int ILK_PABSTRETCH_DIS ; 
 int ILK_VRHUNIT_CLOCK_GATE_DISABLE ; 
 int ILK_VSDPFD_FULL ; 
 int /*<<< orphan*/  RC_OP_FLUSH_ENABLE ; 
 int /*<<< orphan*/  _3D_CHICKEN ; 
 int /*<<< orphan*/  _3D_CHICKEN3 ; 
 int /*<<< orphan*/  _3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL ; 
 int /*<<< orphan*/  _3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH ; 
 int /*<<< orphan*/  _3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC7 (struct drm_i915_private*) ; 

__attribute__((used)) static void FUNC8(struct drm_i915_private *dev_priv)
{
	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;

	FUNC1(ILK_DSPCLK_GATE_D, dspclk_gate);

	FUNC1(ILK_DISPLAY_CHICKEN2,
		   FUNC0(ILK_DISPLAY_CHICKEN2) |
		   ILK_ELPIN_409_SELECT);

	/* WaDisableHiZPlanesWhenMSAAEnabled:snb */
	FUNC1(_3D_CHICKEN,
		   FUNC3(_3D_CHICKEN_HIZ_PLANE_DISABLE_MSAA_4X_SNB));

	/* WaDisable_RenderCache_OperationalFlush:snb */
	FUNC1(CACHE_MODE_0, FUNC2(RC_OP_FLUSH_ENABLE));

	/*
	 * BSpec recoomends 8x4 when MSAA is used,
	 * however in practice 16x4 seems fastest.
	 *
	 * Note that PS/WM thread counts depend on the WIZ hashing
	 * disable bit, which we don't touch here, but it's good
	 * to keep in mind (see 3DSTATE_PS and 3DSTATE_WM).
	 */
	FUNC1(GEN6_GT_MODE,
		   FUNC4(GEN6_WIZ_HASHING_MASK, GEN6_WIZ_HASHING_16x4));

	FUNC1(CACHE_MODE_0,
		   FUNC2(CM0_STC_EVICT_DISABLE_LRA_SNB));

	FUNC1(GEN6_UCGCTL1,
		   FUNC0(GEN6_UCGCTL1) |
		   GEN6_BLBUNIT_CLOCK_GATE_DISABLE |
		   GEN6_CSUNIT_CLOCK_GATE_DISABLE);

	/* According to the BSpec vol1g, bit 12 (RCPBUNIT) clock
	 * gating disable must be set.  Failure to set it results in
	 * flickering pixels due to Z write ordering failures after
	 * some amount of runtime in the Mesa "fire" demo, and Unigine
	 * Sanctuary and Tropics, and apparently anything else with
	 * alpha test or pixel discard.
	 *
	 * According to the spec, bit 11 (RCCUNIT) must also be set,
	 * but we didn't debug actual testcases to find it out.
	 *
	 * WaDisableRCCUnitClockGating:snb
	 * WaDisableRCPBUnitClockGating:snb
	 */
	FUNC1(GEN6_UCGCTL2,
		   GEN6_RCPBUNIT_CLOCK_GATE_DISABLE |
		   GEN6_RCCUNIT_CLOCK_GATE_DISABLE);

	/* WaStripsFansDisableFastClipPerformanceFix:snb */
	FUNC1(_3D_CHICKEN3,
		   FUNC3(_3D_CHICKEN3_SF_DISABLE_FASTCLIP_CULL));

	/*
	 * Bspec says:
	 * "This bit must be set if 3DSTATE_CLIP clip mode is set to normal and
	 * 3DSTATE_SF number of SF output attributes is more than 16."
	 */
	FUNC1(_3D_CHICKEN3,
		   FUNC3(_3D_CHICKEN3_SF_DISABLE_PIPELINED_ATTR_FETCH));

	/*
	 * According to the spec the following bits should be
	 * set in order to enable memory self-refresh and fbc:
	 * The bit21 and bit22 of 0x42000
	 * The bit21 and bit22 of 0x42004
	 * The bit5 and bit7 of 0x42020
	 * The bit14 of 0x70180
	 * The bit14 of 0x71180
	 *
	 * WaFbcAsynchFlipDisableFbcQueue:snb
	 */
	FUNC1(ILK_DISPLAY_CHICKEN1,
		   FUNC0(ILK_DISPLAY_CHICKEN1) |
		   ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
	FUNC1(ILK_DISPLAY_CHICKEN2,
		   FUNC0(ILK_DISPLAY_CHICKEN2) |
		   ILK_DPARB_GATE | ILK_VSDPFD_FULL);
	FUNC1(ILK_DSPCLK_GATE_D,
		   FUNC0(ILK_DSPCLK_GATE_D) |
		   ILK_DPARBUNIT_CLOCK_GATE_ENABLE  |
		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE);

	FUNC6(dev_priv);

	FUNC5(dev_priv);

	FUNC7(dev_priv);
}