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
struct cdn_dp_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_VB_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct cdn_dp_device*,int /*<<< orphan*/ ,int,int,int) ; 

int FUNC2(struct cdn_dp_device *dp, bool enable)
{
	int ret;

	ret = FUNC1(dp, DP_VB_ID, 4, 1, enable);
	if (ret)
		FUNC0(dp->dev, "audio mute failed: %d\n", ret);

	return ret;
}