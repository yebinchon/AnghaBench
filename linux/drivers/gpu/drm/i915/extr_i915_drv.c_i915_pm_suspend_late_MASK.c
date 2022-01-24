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
struct TYPE_2__ {scalar_t__ switch_power_state; } ;
struct drm_i915_private {TYPE_1__ drm; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ DRM_SWITCH_POWER_OFF ; 
 int FUNC0 (TYPE_1__*,int) ; 
 struct drm_i915_private* FUNC1 (struct device*) ; 

__attribute__((used)) static int FUNC2(struct device *kdev)
{
	struct drm_i915_private *i915 = FUNC1(kdev);

	/*
	 * We have a suspend ordering issue with the snd-hda driver also
	 * requiring our device to be power up. Due to the lack of a
	 * parent/child relationship we currently solve this with an late
	 * suspend hook.
	 *
	 * FIXME: This should be solved with a special hdmi sink device or
	 * similar so that power domains can be employed.
	 */
	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
		return 0;

	return FUNC0(&i915->drm, false);
}