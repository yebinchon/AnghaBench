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
struct intel_dp {int* dpcd; scalar_t__* edp_dpcd; int /*<<< orphan*/  fec_capable; int /*<<< orphan*/  aux; int /*<<< orphan*/  dsc_dpcd; } ;

/* Variables and functions */
 size_t DP_DPCD_REV ; 
 int /*<<< orphan*/  DP_DSC_SUPPORT ; 
 scalar_t__ DP_EDP_14 ; 
 int /*<<< orphan*/  DP_FEC_CAPABILITY ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(struct intel_dp *intel_dp)
{
	/*
	 * Clear the cached register set to avoid using stale values
	 * for the sinks that do not support DSC.
	 */
	FUNC5(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));

	/* Clear fec_capable to avoid using stale values */
	intel_dp->fec_capable = 0;

	/* Cache the DSC DPCD if eDP or DP rev >= 1.4 */
	if (intel_dp->dpcd[DP_DPCD_REV] >= 0x14 ||
	    intel_dp->edp_dpcd[0] >= DP_EDP_14) {
		if (FUNC2(&intel_dp->aux, DP_DSC_SUPPORT,
				     intel_dp->dsc_dpcd,
				     sizeof(intel_dp->dsc_dpcd)) < 0)
			FUNC1("Failed to read DPCD register 0x%x\n",
				  DP_DSC_SUPPORT);

		FUNC0("DSC DPCD: %*ph\n",
			      (int)sizeof(intel_dp->dsc_dpcd),
			      intel_dp->dsc_dpcd);

		/* FEC is supported only on DP 1.4 */
		if (!FUNC4(intel_dp) &&
		    FUNC3(&intel_dp->aux, DP_FEC_CAPABILITY,
				      &intel_dp->fec_capable) < 0)
			FUNC1("Failed to read FEC DPCD register\n");

		FUNC0("FEC CAPABILITY: %x\n", intel_dp->fec_capable);
	}
}