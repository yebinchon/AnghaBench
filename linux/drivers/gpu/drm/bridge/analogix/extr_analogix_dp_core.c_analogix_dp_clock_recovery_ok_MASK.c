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

/* Variables and functions */
 int DP_LANE_CR_DONE ; 
 int EINVAL ; 
 int FUNC0 (int*,int) ; 

__attribute__((used)) static int FUNC1(u8 link_status[2], int lane_count)
{
	int lane;
	u8 lane_status;

	for (lane = 0; lane < lane_count; lane++) {
		lane_status = FUNC0(link_status, lane);
		if ((lane_status & DP_LANE_CR_DONE) == 0)
			return -EINVAL;
	}
	return 0;
}