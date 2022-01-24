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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ test_type; } ;
struct intel_dp {scalar_t__ sink_count; TYPE_1__ compliance; int /*<<< orphan*/  aux; } ;
struct drm_i915_private {int /*<<< orphan*/  drm; } ;

/* Variables and functions */
 scalar_t__ DP_TEST_LINK_TRAINING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct drm_i915_private* FUNC1 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int FUNC5 (struct intel_dp*) ; 
 scalar_t__ FUNC6 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC9(struct intel_dp *intel_dp)
{
	struct drm_i915_private *dev_priv = FUNC1(intel_dp);
	u8 old_sink_count = intel_dp->sink_count;
	bool ret;

	/*
	 * Clearing compliance test variables to allow capturing
	 * of values for next automated test request.
	 */
	FUNC8(&intel_dp->compliance, 0, sizeof(intel_dp->compliance));

	/*
	 * Now read the DPCD to see if it's actually running
	 * If the current value of sink count doesn't match with
	 * the value that was stored earlier or dpcd read failed
	 * we need to do full detection
	 */
	ret = FUNC5(intel_dp);

	if ((old_sink_count != intel_dp->sink_count) || !ret) {
		/* No need to proceed if we are going to do full detect */
		return false;
	}

	FUNC4(intel_dp);

	/* Handle CEC interrupts, if any */
	FUNC2(&intel_dp->aux);

	/* defer to the hotplug work for link retraining if needed */
	if (FUNC6(intel_dp))
		return false;

	FUNC7(intel_dp);

	if (intel_dp->compliance.test_type == DP_TEST_LINK_TRAINING) {
		FUNC0("Link Training Compliance Test requested\n");
		/* Send a Hotplug Uevent to userspace to start modeset */
		FUNC3(&dev_priv->drm);
	}

	return true;
}