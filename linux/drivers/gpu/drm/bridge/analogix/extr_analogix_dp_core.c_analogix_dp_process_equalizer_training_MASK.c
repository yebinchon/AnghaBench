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
typedef  void* u32 ;
struct TYPE_2__ {int lane_count; int link_rate; scalar_t__ eq_loop; int /*<<< orphan*/ * training_lane; int /*<<< orphan*/  lt_state; } ;
struct analogix_dp_device {TYPE_1__ link_train; int /*<<< orphan*/  aux; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_ADJUST_REQUEST_LANE0_1 ; 
 int /*<<< orphan*/  DP_LANE0_1_STATUS ; 
 int /*<<< orphan*/  DP_LANE_ALIGN_STATUS_UPDATED ; 
 int /*<<< orphan*/  DP_TRAINING_LANE0_SET ; 
 int EIO ; 
 int /*<<< orphan*/  FINISHED ; 
 scalar_t__ MAX_EQ_LOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct analogix_dp_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct analogix_dp_device*,void**) ; 
 int /*<<< orphan*/  FUNC4 (struct analogix_dp_device*,void**) ; 
 int /*<<< orphan*/  FUNC5 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct analogix_dp_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 

__attribute__((used)) static int FUNC14(struct analogix_dp_device *dp)
{
	int lane, lane_count, retval;
	u32 reg;
	u8 link_align, link_status[2], adjust_request[2];

	FUNC13(400, 401);

	lane_count = dp->link_train.lane_count;

	retval = FUNC10(&dp->aux, DP_LANE0_1_STATUS, link_status, 2);
	if (retval < 0)
		return retval;

	if (FUNC1(link_status, lane_count)) {
		FUNC5(dp);
		return -EIO;
	}

	retval = FUNC10(&dp->aux, DP_ADJUST_REQUEST_LANE0_1,
				  adjust_request, 2);
	if (retval < 0)
		return retval;

	retval = FUNC11(&dp->aux, DP_LANE_ALIGN_STATUS_UPDATED,
				   &link_align);
	if (retval < 0)
		return retval;

	FUNC2(dp, adjust_request);

	if (!FUNC0(link_status, link_align, lane_count)) {
		/* traing pattern Set to Normal */
		retval = FUNC7(dp);
		if (retval < 0)
			return retval;

		FUNC8(dp->dev, "Link Training success!\n");
		FUNC4(dp, &reg);
		dp->link_train.link_rate = reg;
		FUNC8(dp->dev, "final bandwidth = %.2x\n",
			dp->link_train.link_rate);

		FUNC3(dp, &reg);
		dp->link_train.lane_count = reg;
		FUNC8(dp->dev, "final lane count = %.2x\n",
			dp->link_train.lane_count);

		dp->link_train.lt_state = FINISHED;

		return 0;
	}

	/* not all locked */
	dp->link_train.eq_loop++;

	if (dp->link_train.eq_loop > MAX_EQ_LOOP) {
		FUNC9(dp->dev, "EQ Max loop\n");
		FUNC5(dp);
		return -EIO;
	}

	for (lane = 0; lane < lane_count; lane++)
		FUNC6(dp,
			dp->link_train.training_lane[lane], lane);

	retval = FUNC12(&dp->aux, DP_TRAINING_LANE0_SET,
				   dp->link_train.training_lane, lane_count);
	if (retval < 0)
		return retval;

	return 0;
}