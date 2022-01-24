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
struct intel_dp {int pps_reset; } ;
struct TYPE_3__ {int controller; } ;
struct TYPE_4__ {TYPE_1__ backlight; } ;
struct drm_i915_private {int /*<<< orphan*/  pps_mutex; TYPE_2__ vbt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct drm_i915_private* FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC1(intel_dp);
	int backlight_controller = dev_priv->vbt.backlight.controller;

	FUNC4(&dev_priv->pps_mutex);

	/* We should never land here with regular DP ports */
	FUNC0(!FUNC3(intel_dp));

	if (!intel_dp->pps_reset)
		return backlight_controller;

	intel_dp->pps_reset = false;

	/*
	 * Only the HW needs to be reprogrammed, the SW state is fixed and
	 * has been setup during connector init.
	 */
	FUNC2(intel_dp, false);

	return backlight_controller;
}