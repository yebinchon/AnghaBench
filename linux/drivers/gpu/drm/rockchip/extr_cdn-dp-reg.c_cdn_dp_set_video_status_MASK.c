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
struct cdn_dp_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  DPTX_SET_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  MB_MODULE_ID_DP_TX ; 
 int FUNC1 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

int FUNC2(struct cdn_dp_device *dp, int active)
{
	u8 msg;
	int ret;

	msg = !!active;

	ret = FUNC1(dp, MB_MODULE_ID_DP_TX, DPTX_SET_VIDEO,
				  sizeof(msg), &msg);
	if (ret)
		FUNC0(dp->dev, "set video status failed: %d\n", ret);

	return ret;
}