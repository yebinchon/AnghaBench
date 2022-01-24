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
typedef  int u32 ;
struct i915_power_well {TYPE_1__* desc; } ;
struct drm_i915_private {int /*<<< orphan*/  chv_phy_control; } ;
typedef  enum pipe { ____Placeholder_pipe } pipe ;
typedef  enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;
struct TYPE_2__ {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHV_CMN_DW28 ; 
 int /*<<< orphan*/  CHV_CMN_DW30 ; 
 scalar_t__ CHV_DISP_PW_DPIO_CMN_D ; 
 int /*<<< orphan*/  DISPLAY_PHY_CONTROL ; 
 int /*<<< orphan*/  DISPLAY_PHY_STATUS ; 
 int DPIO_CL1POWERDOWNEN ; 
 int DPIO_CL2_LDOFUSE_PWRENB ; 
 int DPIO_DYNPWRDOWNEN_CH0 ; 
 int DPIO_DYNPWRDOWNEN_CH1 ; 
 int DPIO_PHY0 ; 
 int DPIO_PHY1 ; 
 int DPIO_SUS_CLK_CONFIG_GATE_CLKREQ ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PIPE_A ; 
 int PIPE_C ; 
 scalar_t__ VLV_DISP_PW_DPIO_CMN_BC ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  _CHV_CMN_DW6_CH1 ; 
 int /*<<< orphan*/  FUNC6 (struct drm_i915_private*) ; 
 scalar_t__ FUNC7 (struct drm_i915_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC10 (struct drm_i915_private*) ; 
 int FUNC11 (struct drm_i915_private*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct drm_i915_private*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct drm_i915_private*,struct i915_power_well*,int) ; 

__attribute__((used)) static void FUNC14(struct drm_i915_private *dev_priv,
					   struct i915_power_well *power_well)
{
	enum dpio_phy phy;
	enum pipe pipe;
	u32 tmp;

	FUNC5(power_well->desc->id != VLV_DISP_PW_DPIO_CMN_BC &&
		     power_well->desc->id != CHV_DISP_PW_DPIO_CMN_D);

	if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
		pipe = PIPE_A;
		phy = DPIO_PHY0;
	} else {
		pipe = PIPE_C;
		phy = DPIO_PHY1;
	}

	/* since ref/cri clock was enabled */
	FUNC8(1); /* >10ns for cmnreset, >0ns for sidereset */
	FUNC13(dev_priv, power_well, true);

	/* Poll for phypwrgood signal */
	if (FUNC7(dev_priv, DISPLAY_PHY_STATUS,
				  FUNC4(phy), 1))
		FUNC1("Display PHY %d is not power up\n", phy);

	FUNC9(dev_priv);

	/* Enable dynamic power down */
	tmp = FUNC11(dev_priv, pipe, CHV_CMN_DW28);
	tmp |= DPIO_DYNPWRDOWNEN_CH0 | DPIO_CL1POWERDOWNEN |
		DPIO_SUS_CLK_CONFIG_GATE_CLKREQ;
	FUNC12(dev_priv, pipe, CHV_CMN_DW28, tmp);

	if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
		tmp = FUNC11(dev_priv, pipe, _CHV_CMN_DW6_CH1);
		tmp |= DPIO_DYNPWRDOWNEN_CH1;
		FUNC12(dev_priv, pipe, _CHV_CMN_DW6_CH1, tmp);
	} else {
		/*
		 * Force the non-existing CL2 off. BXT does this
		 * too, so maybe it saves some power even though
		 * CL2 doesn't exist?
		 */
		tmp = FUNC11(dev_priv, pipe, CHV_CMN_DW30);
		tmp |= DPIO_CL2_LDOFUSE_PWRENB;
		FUNC12(dev_priv, pipe, CHV_CMN_DW30, tmp);
	}

	FUNC10(dev_priv);

	dev_priv->chv_phy_control |= FUNC3(phy);
	FUNC2(DISPLAY_PHY_CONTROL, dev_priv->chv_phy_control);

	FUNC0("Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
		      phy, dev_priv->chv_phy_control);

	FUNC6(dev_priv);
}