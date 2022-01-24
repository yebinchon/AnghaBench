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
typedef  int /*<<< orphan*/  u8 ;
struct analogix_dp_device {int /*<<< orphan*/  aux; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int DP_LANE_COUNT_ENHANCED_FRAME_EN ; 
 int /*<<< orphan*/  DP_LANE_COUNT_SET ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct analogix_dp_device *dp,
				       bool enable)
{
	u8 data;
	int ret;

	ret = FUNC1(&dp->aux, DP_LANE_COUNT_SET, &data);
	if (ret != 1)
		return ret;

	if (enable)
		ret = FUNC2(&dp->aux, DP_LANE_COUNT_SET,
					 DP_LANE_COUNT_ENHANCED_FRAME_EN |
					 FUNC0(data));
	else
		ret = FUNC2(&dp->aux, DP_LANE_COUNT_SET,
					 FUNC0(data));

	return ret < 0 ? ret : 0;
}