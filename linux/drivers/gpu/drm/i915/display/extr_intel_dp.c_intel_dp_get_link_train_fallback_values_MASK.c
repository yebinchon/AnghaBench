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
struct intel_dp {int max_link_lane_count; int /*<<< orphan*/  max_link_rate; int /*<<< orphan*/ * common_rates; int /*<<< orphan*/  num_common_rates; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_dp*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_dp*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC6(struct intel_dp *intel_dp,
					    int link_rate, u8 lane_count)
{
	int index;

	index = FUNC5(intel_dp->common_rates,
				    intel_dp->num_common_rates,
				    link_rate);
	if (index > 0) {
		if (FUNC3(intel_dp) &&
		    !FUNC2(intel_dp,
							      intel_dp->common_rates[index - 1],
							      lane_count)) {
			FUNC0("Retrying Link training for eDP with same parameters\n");
			return 0;
		}
		intel_dp->max_link_rate = intel_dp->common_rates[index - 1];
		intel_dp->max_link_lane_count = lane_count;
	} else if (lane_count > 1) {
		if (FUNC3(intel_dp) &&
		    !FUNC2(intel_dp,
							      FUNC4(intel_dp),
							      lane_count >> 1)) {
			FUNC0("Retrying Link training for eDP with same parameters\n");
			return 0;
		}
		intel_dp->max_link_rate = FUNC4(intel_dp);
		intel_dp->max_link_lane_count = lane_count >> 1;
	} else {
		FUNC1("Link Training Unsuccessful\n");
		return -1;
	}

	return 0;
}