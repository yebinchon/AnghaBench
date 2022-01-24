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
typedef  int /*<<< orphan*/  u32 ;
struct drm_i915_private {int dummy; } ;
struct bxt_ddi_phy_info {int /*<<< orphan*/  pwron_mask; } ;
typedef  enum dpio_phy { ____Placeholder_dpio_phy } dpio_phy ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BXT_P_CR_GT_DISP_PWRON ; 
 int /*<<< orphan*/  COMMON_RESET_DIS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bxt_ddi_phy_info* FUNC3 (struct drm_i915_private*,int) ; 

void FUNC4(struct drm_i915_private *dev_priv, enum dpio_phy phy)
{
	const struct bxt_ddi_phy_info *phy_info;
	u32 val;

	phy_info = FUNC3(dev_priv, phy);

	val = FUNC1(FUNC0(phy));
	val &= ~COMMON_RESET_DIS;
	FUNC2(FUNC0(phy), val);

	val = FUNC1(BXT_P_CR_GT_DISP_PWRON);
	val &= ~phy_info->pwron_mask;
	FUNC2(BXT_P_CR_GT_DISP_PWRON, val);
}