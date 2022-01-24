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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ link_rate; scalar_t__ lane_count; int lt_state; } ;
struct analogix_dp_device {int /*<<< orphan*/  dev; TYPE_1__ link_train; } ;

/* Variables and functions */
#define  CLOCK_RECOVERY 132 
 scalar_t__ DP_LINK_BW_1_62 ; 
 scalar_t__ DP_LINK_BW_2_7 ; 
 scalar_t__ DP_LINK_BW_5_4 ; 
#define  EQUALIZER_TRAINING 131 
 int EREMOTEIO ; 
#define  FAILED 130 
#define  FINISHED 129 
 scalar_t__ LANE_COUNT1 ; 
 int /*<<< orphan*/  POWER_ALL ; 
#define  START 128 
 int /*<<< orphan*/  FUNC0 (struct analogix_dp_device*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct analogix_dp_device*,scalar_t__*) ; 
 int FUNC2 (struct analogix_dp_device*) ; 
 int FUNC3 (struct analogix_dp_device*) ; 
 int FUNC4 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct analogix_dp_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct analogix_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int FUNC8(struct analogix_dp_device *dp,
				       u32 max_lanes, u32 max_rate)
{
	int retval = 0;
	bool training_finished = false;

	/*
	 * MACRO_RST must be applied after the PLL_LOCK to avoid
	 * the DP inter pair skew issue for at least 10 us
	 */
	FUNC5(dp);

	/* Initialize by reading RX's DPCD */
	FUNC0(dp, &dp->link_train.link_rate);
	FUNC1(dp, &dp->link_train.lane_count);

	if ((dp->link_train.link_rate != DP_LINK_BW_1_62) &&
	    (dp->link_train.link_rate != DP_LINK_BW_2_7) &&
	    (dp->link_train.link_rate != DP_LINK_BW_5_4)) {
		FUNC7(dp->dev, "Rx Max Link Rate is abnormal :%x !\n",
			dp->link_train.link_rate);
		dp->link_train.link_rate = DP_LINK_BW_1_62;
	}

	if (dp->link_train.lane_count == 0) {
		FUNC7(dp->dev, "Rx Max Lane count is abnormal :%x !\n",
			dp->link_train.lane_count);
		dp->link_train.lane_count = (u8)LANE_COUNT1;
	}

	/* Setup TX lane count & rate */
	if (dp->link_train.lane_count > max_lanes)
		dp->link_train.lane_count = max_lanes;
	if (dp->link_train.link_rate > max_rate)
		dp->link_train.link_rate = max_rate;

	/* All DP analog module power up */
	FUNC6(dp, POWER_ALL, 0);

	dp->link_train.lt_state = START;

	/* Process here */
	while (!retval && !training_finished) {
		switch (dp->link_train.lt_state) {
		case START:
			retval = FUNC2(dp);
			if (retval)
				FUNC7(dp->dev, "LT link start failed!\n");
			break;
		case CLOCK_RECOVERY:
			retval = FUNC3(dp);
			if (retval)
				FUNC7(dp->dev, "LT CR failed!\n");
			break;
		case EQUALIZER_TRAINING:
			retval = FUNC4(dp);
			if (retval)
				FUNC7(dp->dev, "LT EQ failed!\n");
			break;
		case FINISHED:
			training_finished = 1;
			break;
		case FAILED:
			return -EREMOTEIO;
		}
	}
	if (retval)
		FUNC7(dp->dev, "eDP link training failed (%d)\n", retval);

	return retval;
}