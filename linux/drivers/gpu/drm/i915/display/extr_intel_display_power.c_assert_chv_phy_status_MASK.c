#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct i915_power_well {TYPE_2__* desc; } ;
struct drm_i915_private {int chv_phy_control; int /*<<< orphan*/ * chv_phy_assert; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {scalar_t__ (* is_enabled ) (struct drm_i915_private*,struct i915_power_well*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  CHV_DISP_PW_DPIO_CMN_D ; 
 int /*<<< orphan*/  DISPLAY_PHY_STATUS ; 
 int /*<<< orphan*/  DPIO_CH0 ; 
 int /*<<< orphan*/  DPIO_CH1 ; 
 size_t DPIO_PHY0 ; 
 size_t DPIO_PHY1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int DPLL_VCO_ENABLE ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC6 (size_t) ; 
 int FUNC7 (size_t,int /*<<< orphan*/ ) ; 
 int FUNC8 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PIPE_B ; 
 int /*<<< orphan*/  VLV_DISP_PW_DPIO_CMN_BC ; 
 scalar_t__ FUNC9 (struct drm_i915_private*,int /*<<< orphan*/ ,int,int,int) ; 
 struct i915_power_well* FUNC10 (struct drm_i915_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct drm_i915_private*,struct i915_power_well*) ; 
 scalar_t__ FUNC12 (struct drm_i915_private*,struct i915_power_well*) ; 

__attribute__((used)) static void FUNC13(struct drm_i915_private *dev_priv)
{
	struct i915_power_well *cmn_bc =
		FUNC10(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
	struct i915_power_well *cmn_d =
		FUNC10(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
	u32 phy_control = dev_priv->chv_phy_control;
	u32 phy_status = 0;
	u32 phy_status_mask = 0xffffffff;

	/*
	 * The BIOS can leave the PHY is some weird state
	 * where it doesn't fully power down some parts.
	 * Disable the asserts until the PHY has been fully
	 * reset (ie. the power well has been disabled at
	 * least once).
	 */
	if (!dev_priv->chv_phy_assert[DPIO_PHY0])
		phy_status_mask &= ~(FUNC7(DPIO_PHY0, DPIO_CH0) |
				     FUNC8(DPIO_PHY0, DPIO_CH0, 0) |
				     FUNC8(DPIO_PHY0, DPIO_CH0, 1) |
				     FUNC7(DPIO_PHY0, DPIO_CH1) |
				     FUNC8(DPIO_PHY0, DPIO_CH1, 0) |
				     FUNC8(DPIO_PHY0, DPIO_CH1, 1));

	if (!dev_priv->chv_phy_assert[DPIO_PHY1])
		phy_status_mask &= ~(FUNC7(DPIO_PHY1, DPIO_CH0) |
				     FUNC8(DPIO_PHY1, DPIO_CH0, 0) |
				     FUNC8(DPIO_PHY1, DPIO_CH0, 1));

	if (cmn_bc->desc->ops->is_enabled(dev_priv, cmn_bc)) {
		phy_status |= FUNC6(DPIO_PHY0);

		/* this assumes override is only used to enable lanes */
		if ((phy_control & FUNC5(DPIO_PHY0, DPIO_CH0)) == 0)
			phy_control |= FUNC4(0xf, DPIO_PHY0, DPIO_CH0);

		if ((phy_control & FUNC5(DPIO_PHY0, DPIO_CH1)) == 0)
			phy_control |= FUNC4(0xf, DPIO_PHY0, DPIO_CH1);

		/* CL1 is on whenever anything is on in either channel */
		if (FUNC0(phy_control,
			     FUNC4(0xf, DPIO_PHY0, DPIO_CH0) |
			     FUNC4(0xf, DPIO_PHY0, DPIO_CH1)))
			phy_status |= FUNC7(DPIO_PHY0, DPIO_CH0);

		/*
		 * The DPLLB check accounts for the pipe B + port A usage
		 * with CL2 powered up but all the lanes in the second channel
		 * powered down.
		 */
		if (FUNC0(phy_control,
			     FUNC4(0xf, DPIO_PHY0, DPIO_CH1)) &&
		    (FUNC3(FUNC1(PIPE_B)) & DPLL_VCO_ENABLE) == 0)
			phy_status |= FUNC7(DPIO_PHY0, DPIO_CH1);

		if (FUNC0(phy_control,
			     FUNC4(0x3, DPIO_PHY0, DPIO_CH0)))
			phy_status |= FUNC8(DPIO_PHY0, DPIO_CH0, 0);
		if (FUNC0(phy_control,
			     FUNC4(0xc, DPIO_PHY0, DPIO_CH0)))
			phy_status |= FUNC8(DPIO_PHY0, DPIO_CH0, 1);

		if (FUNC0(phy_control,
			     FUNC4(0x3, DPIO_PHY0, DPIO_CH1)))
			phy_status |= FUNC8(DPIO_PHY0, DPIO_CH1, 0);
		if (FUNC0(phy_control,
			     FUNC4(0xc, DPIO_PHY0, DPIO_CH1)))
			phy_status |= FUNC8(DPIO_PHY0, DPIO_CH1, 1);
	}

	if (cmn_d->desc->ops->is_enabled(dev_priv, cmn_d)) {
		phy_status |= FUNC6(DPIO_PHY1);

		/* this assumes override is only used to enable lanes */
		if ((phy_control & FUNC5(DPIO_PHY1, DPIO_CH0)) == 0)
			phy_control |= FUNC4(0xf, DPIO_PHY1, DPIO_CH0);

		if (FUNC0(phy_control,
			     FUNC4(0xf, DPIO_PHY1, DPIO_CH0)))
			phy_status |= FUNC7(DPIO_PHY1, DPIO_CH0);

		if (FUNC0(phy_control,
			     FUNC4(0x3, DPIO_PHY1, DPIO_CH0)))
			phy_status |= FUNC8(DPIO_PHY1, DPIO_CH0, 0);
		if (FUNC0(phy_control,
			     FUNC4(0xc, DPIO_PHY1, DPIO_CH0)))
			phy_status |= FUNC8(DPIO_PHY1, DPIO_CH0, 1);
	}

	phy_status &= phy_status_mask;

	/*
	 * The PHY may be busy with some initial calibration and whatnot,
	 * so the power state can take a while to actually change.
	 */
	if (FUNC9(dev_priv, DISPLAY_PHY_STATUS,
				       phy_status_mask, phy_status, 10))
		FUNC2("Unexpected PHY_STATUS 0x%08x, expected 0x%08x (PHY_CONTROL=0x%08x)\n",
			  FUNC3(DISPLAY_PHY_STATUS) & phy_status_mask,
			   phy_status, dev_priv->chv_phy_control);
}