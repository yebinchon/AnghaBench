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
struct amdgpu_atombios_dp_link_train_info {int tries; int* train_set; int /*<<< orphan*/  dp_lane_count; int /*<<< orphan*/  link_status; int /*<<< orphan*/  aux; int /*<<< orphan*/  dpcd; scalar_t__ tp3_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_TRAINING_PATTERN_2 ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_3 ; 
 int DP_TRAIN_PRE_EMPHASIS_MASK ; 
 int DP_TRAIN_PRE_EMPHASIS_SHIFT ; 
 int DP_TRAIN_VOLTAGE_SWING_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_atombios_dp_link_train_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_atombios_dp_link_train_info*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct amdgpu_atombios_dp_link_train_info *dp_info)
{
	bool channel_eq;

	if (dp_info->tp3_supported)
		FUNC3(dp_info, DP_TRAINING_PATTERN_3);
	else
		FUNC3(dp_info, DP_TRAINING_PATTERN_2);

	/* channel equalization loop */
	dp_info->tries = 0;
	channel_eq = false;
	while (1) {
		FUNC7(dp_info->dpcd);

		if (FUNC6(dp_info->aux,
						 dp_info->link_status) <= 0) {
			FUNC1("displayport link status failed\n");
			break;
		}

		if (FUNC5(dp_info->link_status, dp_info->dp_lane_count)) {
			channel_eq = true;
			break;
		}

		/* Try 5 times */
		if (dp_info->tries > 5) {
			FUNC1("channel eq failed: 5 tries\n");
			break;
		}

		/* Compute new train_set as requested by sink */
		FUNC2(dp_info->link_status, dp_info->dp_lane_count,
					     dp_info->train_set);

		FUNC4(dp_info);
		dp_info->tries++;
	}

	if (!channel_eq) {
		FUNC1("channel eq failed\n");
		return -1;
	} else {
		FUNC0("channel eq at voltage %d pre-emphasis %d\n",
			  dp_info->train_set[0] & DP_TRAIN_VOLTAGE_SWING_MASK,
			  (dp_info->train_set[0] & DP_TRAIN_PRE_EMPHASIS_MASK)
			  >> DP_TRAIN_PRE_EMPHASIS_SHIFT);
		return 0;
	}
}