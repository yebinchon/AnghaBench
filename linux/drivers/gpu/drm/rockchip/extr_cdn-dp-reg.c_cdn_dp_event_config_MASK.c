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
 int /*<<< orphan*/  DPTX_ENABLE_EVENT ; 
 int DPTX_EVENT_ENABLE_HPD ; 
 int DPTX_EVENT_ENABLE_TRAINING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  MB_MODULE_ID_DP_TX ; 
 int FUNC1 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct cdn_dp_device *dp)
{
	u8 msg[5];
	int ret;

	FUNC2(msg, 0, sizeof(msg));

	msg[0] = DPTX_EVENT_ENABLE_HPD | DPTX_EVENT_ENABLE_TRAINING;

	ret = FUNC1(dp, MB_MODULE_ID_DP_TX, DPTX_ENABLE_EVENT,
				  sizeof(msg), msg);
	if (ret)
		FUNC0(dp->dev, "set event config failed: %d\n", ret);

	return ret;
}