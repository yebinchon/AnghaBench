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
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct analogix_dp_device *dp,
						  u8 *enhanced_mode_support)
{
	u8 data;
	int ret;

	ret = FUNC1(&dp->aux, DP_MAX_LANE_COUNT, &data);
	if (ret != 1) {
		*enhanced_mode_support = 0;
		return ret;
	}

	*enhanced_mode_support = FUNC0(data);

	return 0;
}