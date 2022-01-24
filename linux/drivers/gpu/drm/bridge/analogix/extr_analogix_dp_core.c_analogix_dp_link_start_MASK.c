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
typedef  int u8 ;
struct TYPE_2__ {int lane_count; int link_rate; scalar_t__* cr_loop; scalar_t__ eq_loop; int /*<<< orphan*/  lt_state; } ;
struct analogix_dp_device {int /*<<< orphan*/  aux; int /*<<< orphan*/  dev; TYPE_1__ link_train; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_RECOVERY ; 
 int /*<<< orphan*/  DP_LINK_BW_SET ; 
 int DP_LINK_SCRAMBLING_DISABLE ; 
 int DP_TIMEOUT_LOOP_COUNT ; 
 int /*<<< orphan*/  DP_TRAINING_LANE0_SET ; 
 int DP_TRAINING_PATTERN_1 ; 
 int /*<<< orphan*/  DP_TRAINING_PATTERN_SET ; 
 int DP_TRAIN_PRE_EMPH_LEVEL_0 ; 
 int DP_TRAIN_VOLTAGE_SWING_LEVEL_0 ; 
 int ETIMEDOUT ; 
 scalar_t__ PLL_UNLOCKED ; 
 int /*<<< orphan*/  PRE_EMPHASIS_LEVEL_0 ; 
 int /*<<< orphan*/  TRAINING_PTN1 ; 
 scalar_t__ FUNC0 (struct analogix_dp_device*) ; 
 int FUNC1 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct analogix_dp_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct analogix_dp_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct analogix_dp_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct analogix_dp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct analogix_dp_device *dp)
{
	u8 buf[4];
	int lane, lane_count, pll_tries, retval;

	lane_count = dp->link_train.lane_count;

	dp->link_train.lt_state = CLOCK_RECOVERY;
	dp->link_train.eq_loop = 0;

	for (lane = 0; lane < lane_count; lane++)
		dp->link_train.cr_loop[lane] = 0;

	/* Set link rate and count as you want to establish*/
	FUNC4(dp, dp->link_train.link_rate);
	FUNC2(dp, dp->link_train.lane_count);

	/* Setup RX configuration */
	buf[0] = dp->link_train.link_rate;
	buf[1] = dp->link_train.lane_count;
	retval = FUNC7(&dp->aux, DP_LINK_BW_SET, buf, 2);
	if (retval < 0)
		return retval;
	/* set enhanced mode if available */
	retval = FUNC1(dp);
	if (retval < 0) {
		FUNC6(dp->dev, "failed to set enhance mode\n");
		return retval;
	}

	/* Set TX pre-emphasis to minimum */
	for (lane = 0; lane < lane_count; lane++)
		FUNC3(dp,
			PRE_EMPHASIS_LEVEL_0, lane);

	/* Wait for PLL lock */
	pll_tries = 0;
	while (FUNC0(dp) == PLL_UNLOCKED) {
		if (pll_tries == DP_TIMEOUT_LOOP_COUNT) {
			FUNC6(dp->dev, "Wait for PLL lock timed out\n");
			return -ETIMEDOUT;
		}

		pll_tries++;
		FUNC9(90, 120);
	}

	/* Set training pattern 1 */
	FUNC5(dp, TRAINING_PTN1);

	/* Set RX training pattern */
	retval = FUNC8(&dp->aux, DP_TRAINING_PATTERN_SET,
				    DP_LINK_SCRAMBLING_DISABLE |
					DP_TRAINING_PATTERN_1);
	if (retval < 0)
		return retval;

	for (lane = 0; lane < lane_count; lane++)
		buf[lane] = DP_TRAIN_PRE_EMPH_LEVEL_0 |
			    DP_TRAIN_VOLTAGE_SWING_LEVEL_0;

	retval = FUNC7(&dp->aux, DP_TRAINING_LANE0_SET, buf,
				   lane_count);
	if (retval < 0)
		return retval;

	return 0;
}