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
typedef  int u8 ;
struct intel_dp {int* dpcd; int /*<<< orphan*/  aux; } ;
typedef  int /*<<< orphan*/  dpcd_ext ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DP13_DPCD_REV ; 
 size_t DP_DPCD_REV ; 
 int DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT ; 
 size_t DP_TRAINING_AUX_RD_INTERVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int**,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 

__attribute__((used)) static void
FUNC5(struct intel_dp *intel_dp)
{
	u8 dpcd_ext[6];

	/*
	 * Prior to DP1.3 the bit represented by
	 * DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT was reserved.
	 * if it is set DP_DPCD_REV at 0000h could be at a value less than
	 * the true capability of the panel. The only way to check is to
	 * then compare 0000h and 2200h.
	 */
	if (!(intel_dp->dpcd[DP_TRAINING_AUX_RD_INTERVAL] &
	      DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT))
		return;

	if (FUNC2(&intel_dp->aux, DP_DP13_DPCD_REV,
			     &dpcd_ext, sizeof(dpcd_ext)) != sizeof(dpcd_ext)) {
		FUNC1("DPCD failed read at extended capabilities\n");
		return;
	}

	if (intel_dp->dpcd[DP_DPCD_REV] > dpcd_ext[DP_DPCD_REV]) {
		FUNC0("DPCD extended DPCD rev less than base DPCD rev\n");
		return;
	}

	if (!FUNC3(intel_dp->dpcd, dpcd_ext, sizeof(dpcd_ext)))
		return;

	FUNC0("Base DPCD: %*ph\n",
		      (int)sizeof(intel_dp->dpcd), intel_dp->dpcd);

	FUNC4(intel_dp->dpcd, dpcd_ext, sizeof(dpcd_ext));
}