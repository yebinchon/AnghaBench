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
struct cdn_dp_device {int /*<<< orphan*/  connector; int /*<<< orphan*/  edid; int /*<<< orphan*/  dev; int /*<<< orphan*/  dpcd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_DPCD_REV ; 
 int /*<<< orphan*/  DP_RECEIVER_CAP_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC1 (struct cdn_dp_device*) ; 
 int FUNC2 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cdn_dp_get_edid_block ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cdn_dp_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cdn_dp_device *dp)
{
	int ret;

	if (!FUNC1(dp))
		return -ENODEV;

	ret = FUNC2(dp, DP_DPCD_REV, dp->dpcd,
			       DP_RECEIVER_CAP_SIZE);
	if (ret) {
		FUNC0(dp->dev, "Failed to get caps %d\n", ret);
		return ret;
	}

	FUNC4(dp->edid);
	dp->edid = FUNC3(&dp->connector,
				   cdn_dp_get_edid_block, dp);
	return 0;
}