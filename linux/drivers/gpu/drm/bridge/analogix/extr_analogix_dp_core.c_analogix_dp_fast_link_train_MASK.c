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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int lane_count; int /*<<< orphan*/ * training_lane; int /*<<< orphan*/  link_rate; } ;
struct analogix_dp_device {int /*<<< orphan*/  dev; TYPE_1__ link_train; int /*<<< orphan*/  aux; } ;
typedef  enum pll_status { ____Placeholder_pll_status } pll_status ;

/* Variables and functions */
 int /*<<< orphan*/  DP_LANE0_1_STATUS ; 
 int /*<<< orphan*/  DP_LANE_ALIGN_STATUS_UPDATED ; 
 int /*<<< orphan*/  DP_NONE ; 
 int DP_TIMEOUT_LOOP_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int EIO ; 
 int PLL_UNLOCKED ; 
 int /*<<< orphan*/  TRAINING_PTN1 ; 
 int /*<<< orphan*/  TRAINING_PTN2 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  analogix_dp_get_pll_lock_status ; 
 int /*<<< orphan*/  FUNC3 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct analogix_dp_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct analogix_dp_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct analogix_dp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct analogix_dp_device*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct analogix_dp_device*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 scalar_t__ verify_fast_training ; 

__attribute__((used)) static int FUNC13(struct analogix_dp_device *dp)
{
	int i, ret;
	u8 link_align, link_status[2];
	enum pll_status status;

	FUNC4(dp);

	FUNC7(dp, dp->link_train.link_rate);
	FUNC5(dp, dp->link_train.lane_count);

	for (i = 0; i < dp->link_train.lane_count; i++) {
		FUNC6(dp,
			dp->link_train.training_lane[i], i);
	}

	ret = FUNC11(analogix_dp_get_pll_lock_status, dp, status,
				 status != PLL_UNLOCKED, 120,
				 120 * DP_TIMEOUT_LOOP_COUNT);
	if (ret) {
		FUNC0(dp->dev, "Wait for pll lock failed %d\n", ret);
		return ret;
	}

	/* source Set training pattern 1 */
	FUNC8(dp, TRAINING_PTN1);
	/* From DP spec, pattern must be on-screen for a minimum 500us */
	FUNC12(500, 600);

	FUNC8(dp, TRAINING_PTN2);
	/* From DP spec, pattern must be on-screen for a minimum 500us */
	FUNC12(500, 600);

	/* TODO: enhanced_mode?*/
	FUNC8(dp, DP_NONE);

	/*
	 * Useful for debugging issues with fast link training, disable for more
	 * speed
	 */
	if (verify_fast_training) {
		ret = FUNC10(&dp->aux, DP_LANE_ALIGN_STATUS_UPDATED,
					&link_align);
		if (ret < 0) {
			FUNC0(dp->dev, "Read align status failed %d\n",
				      ret);
			return ret;
		}

		ret = FUNC9(&dp->aux, DP_LANE0_1_STATUS, link_status,
				       2);
		if (ret < 0) {
			FUNC0(dp->dev, "Read link status failed %d\n",
				      ret);
			return ret;
		}

		if (FUNC2(link_status,
						  dp->link_train.lane_count)) {
			FUNC0(dp->dev, "Clock recovery failed\n");
			FUNC3(dp);
			return -EIO;
		}

		if (FUNC1(link_status, link_align,
					      dp->link_train.lane_count)) {
			FUNC0(dp->dev, "Channel EQ failed\n");
			FUNC3(dp);
			return -EIO;
		}
	}

	return 0;
}