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
struct drm_i915_private {int bxt_phy_grc; int /*<<< orphan*/  uncore; } ;
struct bxt_ddi_phy_info {int rcomp_phy; int pwron_mask; scalar_t__ reset_delay; scalar_t__ dual_channel; } ;
typedef  enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  BXT_P_CR_GT_DISP_PWRON ; 
 int COMMON_RESET_DIS ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int DW28_OLDO_DYN_PWR_DOWN_EN ; 
 int DW6_OLDO_DYN_PWR_DOWN_EN ; 
 int GRC_CODE_FAST_SHIFT ; 
 int GRC_CODE_SLOW_SHIFT ; 
 int GRC_DIS ; 
 int GRC_RDY_OVRD ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int IREF0RC_OFFSET_MASK ; 
 int IREF0RC_OFFSET_SHIFT ; 
 int IREF1RC_OFFSET_MASK ; 
 int IREF1RC_OFFSET_SHIFT ; 
 int OCL1_POWER_DOWN_EN ; 
 int PHY_POWER_GOOD ; 
 int PHY_RESERVED ; 
 int SUS_CLK_CONFIG ; 
 scalar_t__ FUNC12 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC13 (struct drm_i915_private*,int) ; 
 void* FUNC14 (struct drm_i915_private*,int) ; 
 struct bxt_ddi_phy_info* FUNC15 (struct drm_i915_private*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct drm_i915_private*,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 

__attribute__((used)) static void FUNC19(struct drm_i915_private *dev_priv,
			      enum dpio_phy phy)
{
	const struct bxt_ddi_phy_info *phy_info;
	u32 val;

	phy_info = FUNC15(dev_priv, phy);

	if (FUNC12(dev_priv, phy)) {
		/* Still read out the GRC value for state verification */
		if (phy_info->rcomp_phy != -1)
			dev_priv->bxt_phy_grc = FUNC14(dev_priv, phy);

		if (FUNC13(dev_priv, phy)) {
			FUNC8("DDI PHY %d already enabled, "
					 "won't reprogram it\n", phy);
			return;
		}

		FUNC8("DDI PHY %d enabled with invalid state, "
				 "force reprogramming it\n", phy);
	}

	val = FUNC10(BXT_P_CR_GT_DISP_PWRON);
	val |= phy_info->pwron_mask;
	FUNC11(BXT_P_CR_GT_DISP_PWRON, val);

	/*
	 * The PHY registers start out inaccessible and respond to reads with
	 * all 1s.  Eventually they become accessible as they power up, then
	 * the reserved bit will give the default 0.  Poll on the reserved bit
	 * becoming 0 to find when the PHY is accessible.
	 * The flag should get set in 100us according to the HW team, but
	 * use 1ms due to occasional timeouts observed with that.
	 */
	if (FUNC17(&dev_priv->uncore,
				       FUNC1(phy),
				       PHY_RESERVED | PHY_POWER_GOOD,
				       PHY_POWER_GOOD,
				       1))
		FUNC9("timeout during PHY%d power on\n", phy);

	/* Program PLL Rcomp code offset */
	val = FUNC10(FUNC4(phy));
	val &= ~IREF0RC_OFFSET_MASK;
	val |= 0xE4 << IREF0RC_OFFSET_SHIFT;
	FUNC11(FUNC4(phy), val);

	val = FUNC10(FUNC2(phy));
	val &= ~IREF1RC_OFFSET_MASK;
	val |= 0xE4 << IREF1RC_OFFSET_SHIFT;
	FUNC11(FUNC2(phy), val);

	/* Program power gating */
	val = FUNC10(FUNC3(phy));
	val |= OCL1_POWER_DOWN_EN | DW28_OLDO_DYN_PWR_DOWN_EN |
		SUS_CLK_CONFIG;
	FUNC11(FUNC3(phy), val);

	if (phy_info->dual_channel) {
		val = FUNC10(FUNC5(phy));
		val |= DW6_OLDO_DYN_PWR_DOWN_EN;
		FUNC11(FUNC5(phy), val);
	}

	if (phy_info->rcomp_phy != -1) {
		u32 grc_code;

		FUNC16(dev_priv, phy_info->rcomp_phy);

		/*
		 * PHY0 isn't connected to an RCOMP resistor so copy over
		 * the corresponding calibrated value from PHY1, and disable
		 * the automatic calibration on PHY0.
		 */
		val = dev_priv->bxt_phy_grc = FUNC14(dev_priv,
							  phy_info->rcomp_phy);
		grc_code = val << GRC_CODE_FAST_SHIFT |
			   val << GRC_CODE_SLOW_SHIFT |
			   val;
		FUNC11(FUNC6(phy), grc_code);

		val = FUNC10(FUNC7(phy));
		val |= GRC_DIS | GRC_RDY_OVRD;
		FUNC11(FUNC7(phy), val);
	}

	if (phy_info->reset_delay)
		FUNC18(phy_info->reset_delay);

	val = FUNC10(FUNC0(phy));
	val |= COMMON_RESET_DIS;
	FUNC11(FUNC0(phy), val);
}