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
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int SDE_DDI_MASK_ICP ; 
 int SDE_DDI_MASK_TGP ; 
 int SDE_GMBUS_ICP ; 
 int SDE_TC_MASK_ICP ; 
 int /*<<< orphan*/  SHOTPLUG_CTL_DDI ; 
 int /*<<< orphan*/  SHOTPLUG_CTL_TC ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  icp_ddi_port_hotplug_long_detect ; 
 int /*<<< orphan*/  icp_tc_port_hotplug_long_detect ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int*,int*,int,int,int const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv, u32 pch_iir,
			    const u32 *pins)
{
	u32 ddi_hotplug_trigger;
	u32 tc_hotplug_trigger;
	u32 pin_mask = 0, long_mask = 0;

	if (FUNC0(dev_priv)) {
		ddi_hotplug_trigger = pch_iir & SDE_DDI_MASK_TGP;
		tc_hotplug_trigger = 0;
	} else {
		ddi_hotplug_trigger = pch_iir & SDE_DDI_MASK_ICP;
		tc_hotplug_trigger = pch_iir & SDE_TC_MASK_ICP;
	}

	if (ddi_hotplug_trigger) {
		u32 dig_hotplug_reg;

		dig_hotplug_reg = FUNC1(SHOTPLUG_CTL_DDI);
		FUNC2(SHOTPLUG_CTL_DDI, dig_hotplug_reg);

		FUNC4(dev_priv, &pin_mask, &long_mask,
				   ddi_hotplug_trigger,
				   dig_hotplug_reg, pins,
				   icp_ddi_port_hotplug_long_detect);
	}

	if (tc_hotplug_trigger) {
		u32 dig_hotplug_reg;

		dig_hotplug_reg = FUNC1(SHOTPLUG_CTL_TC);
		FUNC2(SHOTPLUG_CTL_TC, dig_hotplug_reg);

		FUNC4(dev_priv, &pin_mask, &long_mask,
				   tc_hotplug_trigger,
				   dig_hotplug_reg, pins,
				   icp_tc_port_hotplug_long_detect);
	}

	if (pin_mask)
		FUNC5(dev_priv, pin_mask, long_mask);

	if (pch_iir & SDE_GMBUS_ICP)
		FUNC3(dev_priv);
}