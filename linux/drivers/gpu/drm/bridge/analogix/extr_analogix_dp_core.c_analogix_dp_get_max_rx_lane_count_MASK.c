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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DP_MAX_LANE_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct analogix_dp_device *dp,
					      u8 *lane_count)
{
	u8 data;

	/*
	 * For DP rev.1.1, Maximum number of Main Link lanes
	 * 0x01 = 1 lane, 0x02 = 2 lanes, 0x04 = 4 lanes
	 */
	FUNC1(&dp->aux, DP_MAX_LANE_COUNT, &data);
	*lane_count = FUNC0(data);
}