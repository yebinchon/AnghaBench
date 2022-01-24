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
struct TYPE_2__ {int /*<<< orphan*/  num_lanes; int /*<<< orphan*/  rate; } ;
struct cdn_dp_device {int /*<<< orphan*/  dev; TYPE_1__ link; } ;
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int /*<<< orphan*/  DPTX_READ_LINK_STAT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  MB_MODULE_ID_DP_TX ; 
 int FUNC1 (struct cdn_dp_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cdn_dp_device *dp)
{
	u8 status[10];
	int ret;

	ret = FUNC2(dp, MB_MODULE_ID_DP_TX, DPTX_READ_LINK_STAT,
				  0, NULL);
	if (ret)
		goto err_get_training_status;

	ret = FUNC3(dp, MB_MODULE_ID_DP_TX,
					      DPTX_READ_LINK_STAT,
					      sizeof(status));
	if (ret)
		goto err_get_training_status;

	ret = FUNC1(dp, status, sizeof(status));
	if (ret)
		goto err_get_training_status;

	dp->link.rate = FUNC4(status[0]);
	dp->link.num_lanes = status[1];

err_get_training_status:
	if (ret)
		FUNC0(dp->dev, "get training status failed: %d\n", ret);
	return ret;
}