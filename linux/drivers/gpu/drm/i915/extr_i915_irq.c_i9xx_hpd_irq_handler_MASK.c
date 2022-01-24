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
 scalar_t__ FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct drm_i915_private*) ; 
 scalar_t__ FUNC2 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  hpd_status_g4x ; 
 int /*<<< orphan*/  hpd_status_i915 ; 
 int /*<<< orphan*/  i9xx_port_hotplug_long_detect ; 
 int /*<<< orphan*/  FUNC4 (struct drm_i915_private*,int*,int*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct drm_i915_private*,int,int) ; 

__attribute__((used)) static void FUNC6(struct drm_i915_private *dev_priv,
				 u32 hotplug_status)
{
	u32 pin_mask = 0, long_mask = 0;

	if (FUNC1(dev_priv) || FUNC2(dev_priv) ||
	    FUNC0(dev_priv)) {
		u32 hotplug_trigger = hotplug_status & HOTPLUG_INT_STATUS_G4X;

		if (hotplug_trigger) {
			FUNC4(dev_priv, &pin_mask, &long_mask,
					   hotplug_trigger, hotplug_trigger,
					   hpd_status_g4x,
					   i9xx_port_hotplug_long_detect);

			FUNC5(dev_priv, pin_mask, long_mask);
		}

		if (hotplug_status & DP_AUX_CHANNEL_MASK_INT_STATUS_G4X)
			FUNC3(dev_priv);
	} else {
		u32 hotplug_trigger = hotplug_status & HOTPLUG_INT_STATUS_I915;

		if (hotplug_trigger) {
			FUNC4(dev_priv, &pin_mask, &long_mask,
					   hotplug_trigger, hotplug_trigger,
					   hpd_status_i915,
					   i9xx_port_hotplug_long_detect);
			FUNC5(dev_priv, pin_mask, long_mask);
		}
	}
}