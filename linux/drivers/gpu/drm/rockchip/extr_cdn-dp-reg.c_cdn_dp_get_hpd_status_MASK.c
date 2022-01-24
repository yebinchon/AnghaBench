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
typedef  int /*<<< orphan*/  status ;

/* Variables and functions */
 int /*<<< orphan*/  DPTX_HPD_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  MB_MODULE_ID_DP_TX ; 
 int FUNC1 (struct cdn_dp_device*,int*,int) ; 
 int FUNC2 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct cdn_dp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC4(struct cdn_dp_device *dp)
{
	u8 status;
	int ret;

	ret = FUNC2(dp, MB_MODULE_ID_DP_TX, DPTX_HPD_STATE,
				  0, NULL);
	if (ret)
		goto err_get_hpd;

	ret = FUNC3(dp, MB_MODULE_ID_DP_TX,
					      DPTX_HPD_STATE, sizeof(status));
	if (ret)
		goto err_get_hpd;

	ret = FUNC1(dp, &status, sizeof(status));
	if (ret)
		goto err_get_hpd;

	return status;

err_get_hpd:
	FUNC0(dp->dev, "get hpd status failed: %d\n", ret);
	return ret;
}