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
struct bxt_ddi_phy_info {int pwron_mask; } ;
typedef  enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  BXT_P_CR_GT_DISP_PWRON ; 
 int COMMON_RESET_DIS ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int PHY_POWER_GOOD ; 
 int PHY_RESERVED ; 
 struct bxt_ddi_phy_info* FUNC4 (struct drm_i915_private*,int) ; 

bool FUNC5(struct drm_i915_private *dev_priv,
			    enum dpio_phy phy)
{
	const struct bxt_ddi_phy_info *phy_info;

	phy_info = FUNC4(dev_priv, phy);

	if (!(FUNC3(BXT_P_CR_GT_DISP_PWRON) & phy_info->pwron_mask))
		return false;

	if ((FUNC3(FUNC1(phy)) &
	     (PHY_POWER_GOOD | PHY_RESERVED)) != PHY_POWER_GOOD) {
		FUNC2("DDI PHY %d powered, but power hasn't settled\n",
				 phy);

		return false;
	}

	if (!(FUNC3(FUNC0(phy)) & COMMON_RESET_DIS)) {
		FUNC2("DDI PHY %d powered, but still in reset\n",
				 phy);

		return false;
	}

	return true;
}