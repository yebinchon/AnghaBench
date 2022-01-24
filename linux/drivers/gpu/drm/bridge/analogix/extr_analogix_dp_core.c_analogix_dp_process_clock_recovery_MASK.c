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
struct TYPE_2__ {int lane_count; scalar_t__* cr_loop; int /*<<< orphan*/ * training_lane; int /*<<< orphan*/  lt_state; } ;
struct analogix_dp_device {TYPE_1__ link_train; int /*<<< orphan*/  aux; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  DP_ADJUST_REQUEST_LANE0_1 ; 
 int /*<<< orphan*/  DP_LANE0_1_STATUS ; 
 int DP_LINK_SCRAMBLING_DISABLE ; 
 int /*<<< orphan*/  DP_TRAINING_LANE0_SET ; 
 int DP_TRAINING_PATTERN_2 ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_SET ; 
 int EIO ; 
 int /*<<< orphan*/  EQUALIZER_TRAINING ; 
 scalar_t__ MAX_CR_LOOP ; 
 scalar_t__ PRE_EMPHASIS_LEVEL_3 ; 
 int /*<<< orphan*/  TRAINING_PTN2 ; 
 scalar_t__ VOLTAGE_LEVEL_3 ; 
 scalar_t__ FUNC2 (scalar_t__*,int) ; 
 scalar_t__ FUNC3 (scalar_t__*,int) ; 
 scalar_t__ FUNC4 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct analogix_dp_device*,scalar_t__*) ; 
 scalar_t__ FUNC6 (struct analogix_dp_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct analogix_dp_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct analogix_dp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

__attribute__((used)) static int FUNC16(struct analogix_dp_device *dp)
{
	int lane, lane_count, retval;
	u8 voltage_swing, pre_emphasis, training_lane;
	u8 link_status[2], adjust_request[2];

	FUNC15(100, 101);

	lane_count = dp->link_train.lane_count;

	retval = FUNC12(&dp->aux, DP_LANE0_1_STATUS, link_status, 2);
	if (retval < 0)
		return retval;

	retval = FUNC12(&dp->aux, DP_ADJUST_REQUEST_LANE0_1,
				  adjust_request, 2);
	if (retval < 0)
		return retval;

	if (FUNC2(link_status, lane_count) == 0) {
		/* set training pattern 2 for EQ */
		FUNC9(dp, TRAINING_PTN2);

		retval = FUNC14(&dp->aux, DP_TRAINING_PATTERN_SET,
					    DP_LINK_SCRAMBLING_DISABLE |
						DP_TRAINING_PATTERN_2);
		if (retval < 0)
			return retval;

		FUNC10(dp->dev, "Link Training Clock Recovery success\n");
		dp->link_train.lt_state = EQUALIZER_TRAINING;
	} else {
		for (lane = 0; lane < lane_count; lane++) {
			training_lane = FUNC6(
							dp, lane);
			voltage_swing = FUNC4(
							adjust_request, lane);
			pre_emphasis = FUNC3(
							adjust_request, lane);

			if (FUNC1(training_lane) ==
					voltage_swing &&
			    FUNC0(training_lane) ==
					pre_emphasis)
				dp->link_train.cr_loop[lane]++;

			if (dp->link_train.cr_loop[lane] == MAX_CR_LOOP ||
			    voltage_swing == VOLTAGE_LEVEL_3 ||
			    pre_emphasis == PRE_EMPHASIS_LEVEL_3) {
				FUNC11(dp->dev, "CR Max reached (%d,%d,%d)\n",
					dp->link_train.cr_loop[lane],
					voltage_swing, pre_emphasis);
				FUNC7(dp);
				return -EIO;
			}
		}
	}

	FUNC5(dp, adjust_request);

	for (lane = 0; lane < lane_count; lane++)
		FUNC8(dp,
			dp->link_train.training_lane[lane], lane);

	retval = FUNC13(&dp->aux, DP_TRAINING_LANE0_SET,
				   dp->link_train.training_lane, lane_count);
	if (retval < 0)
		return retval;

	return 0;
}