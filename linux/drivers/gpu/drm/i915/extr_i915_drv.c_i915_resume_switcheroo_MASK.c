#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ switch_power_state; } ;
struct drm_i915_private {TYPE_1__ drm; } ;

/* Variables and functions */
 scalar_t__ DRM_SWITCH_POWER_OFF ; 
 int FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2(struct drm_i915_private *i915)
{
	int ret;

	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
		return 0;

	ret = FUNC1(&i915->drm);
	if (ret)
		return ret;

	return FUNC0(&i915->drm);
}