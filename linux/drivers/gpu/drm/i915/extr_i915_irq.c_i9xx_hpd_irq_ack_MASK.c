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
 int DP_AUX_CHANNEL_MASK_INT_STATUS_G4X ; 
 int HOTPLUG_INT_STATUS_G4X ; 
 int HOTPLUG_INT_STATUS_I915 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 scalar_t__ FUNC3 (struct drm_i915_private*) ; 
 scalar_t__ FUNC4 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  PORT_HOTPLUG_STAT ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int) ; 

__attribute__((used)) static u32 FUNC6(struct drm_i915_private *dev_priv)
{
	u32 hotplug_status = 0, hotplug_status_mask;
	int i;

	if (FUNC3(dev_priv) ||
	    FUNC4(dev_priv) || FUNC2(dev_priv))
		hotplug_status_mask = HOTPLUG_INT_STATUS_G4X |
			DP_AUX_CHANNEL_MASK_INT_STATUS_G4X;
	else
		hotplug_status_mask = HOTPLUG_INT_STATUS_I915;

	/*
	 * We absolutely have to clear all the pending interrupt
	 * bits in PORT_HOTPLUG_STAT. Otherwise the ISR port
	 * interrupt bit won't have an edge, and the i965/g4x
	 * edge triggered IIR will not notice that an interrupt
	 * is still pending. We can't use PORT_HOTPLUG_EN to
	 * guarantee the edge as the act of toggling the enable
	 * bits can itself generate a new hotplug interrupt :(
	 */
	for (i = 0; i < 10; i++) {
		u32 tmp = FUNC0(PORT_HOTPLUG_STAT) & hotplug_status_mask;

		if (tmp == 0)
			return hotplug_status;

		hotplug_status |= tmp;
		FUNC1(PORT_HOTPLUG_STAT, hotplug_status);
	}

	FUNC5(1,
		  "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
		  FUNC0(PORT_HOTPLUG_STAT));

	return hotplug_status;
}