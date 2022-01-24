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
struct intel_lspcon {scalar_t__ active; } ;
struct intel_dp {int* dpcd; int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 size_t DP_DPCD_REV ; 
 int /*<<< orphan*/  DP_SET_POWER ; 
 int /*<<< orphan*/  DP_SET_POWER_D0 ; 
 int /*<<< orphan*/  DP_SET_POWER_D3 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int DRM_MODE_DPMS_ON ; 
 scalar_t__ FUNC1 (struct intel_dp*) ; 
 struct intel_lspcon* FUNC2 (struct intel_dp*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_lspcon*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct intel_dp *intel_dp, int mode)
{
	int ret, i;

	/* Should have a valid DPCD by this point */
	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
		return;

	if (mode != DRM_MODE_DPMS_ON) {
		if (FUNC1(intel_dp))
			return;

		ret = FUNC3(&intel_dp->aux, DP_SET_POWER,
					 DP_SET_POWER_D3);
	} else {
		struct intel_lspcon *lspcon = FUNC2(intel_dp);

		/*
		 * When turning on, we need to retry for 1ms to give the sink
		 * time to wake up.
		 */
		for (i = 0; i < 3; i++) {
			ret = FUNC3(&intel_dp->aux, DP_SET_POWER,
						 DP_SET_POWER_D0);
			if (ret == 1)
				break;
			FUNC5(1);
		}

		if (ret == 1 && lspcon->active)
			FUNC4(lspcon);
	}

	if (ret != 1)
		FUNC0("failed to %s sink power state\n",
			      mode == DRM_MODE_DPMS_ON ? "enable" : "disable");
}