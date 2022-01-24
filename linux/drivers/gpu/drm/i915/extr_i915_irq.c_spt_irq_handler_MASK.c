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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PCH_PORT_HOTPLUG ; 
 int /*<<< orphan*/  PCH_PORT_HOTPLUG2 ; 
 int SDE_GMBUS_CPT ; 
 int SDE_HOTPLUG_MASK_SPT ; 
 int SDE_PORTE_HOTPLUG_SPT ; 
 int /*<<< orphan*/  FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  hpd_spt ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*,int*,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int,int) ; 
 int /*<<< orphan*/  spt_port_hotplug2_long_detect ; 
 int /*<<< orphan*/  spt_port_hotplug_long_detect ; 

__attribute__((used)) static void FUNC5(struct drm_i915_private *dev_priv, u32 pch_iir)
{
	u32 hotplug_trigger = pch_iir & SDE_HOTPLUG_MASK_SPT &
		~SDE_PORTE_HOTPLUG_SPT;
	u32 hotplug2_trigger = pch_iir & SDE_PORTE_HOTPLUG_SPT;
	u32 pin_mask = 0, long_mask = 0;

	if (hotplug_trigger) {
		u32 dig_hotplug_reg;

		dig_hotplug_reg = FUNC0(PCH_PORT_HOTPLUG);
		FUNC1(PCH_PORT_HOTPLUG, dig_hotplug_reg);

		FUNC3(dev_priv, &pin_mask, &long_mask,
				   hotplug_trigger, dig_hotplug_reg, hpd_spt,
				   spt_port_hotplug_long_detect);
	}

	if (hotplug2_trigger) {
		u32 dig_hotplug_reg;

		dig_hotplug_reg = FUNC0(PCH_PORT_HOTPLUG2);
		FUNC1(PCH_PORT_HOTPLUG2, dig_hotplug_reg);

		FUNC3(dev_priv, &pin_mask, &long_mask,
				   hotplug2_trigger, dig_hotplug_reg, hpd_spt,
				   spt_port_hotplug2_long_detect);
	}

	if (pin_mask)
		FUNC4(dev_priv, pin_mask, long_mask);

	if (pch_iir & SDE_GMBUS_CPT)
		FUNC2(dev_priv);
}