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
struct rockchip_dp_device {int /*<<< orphan*/  pclk; int /*<<< orphan*/  dev; } ;
struct analogix_dp_plat_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rockchip_dp_device*) ; 
 struct rockchip_dp_device* FUNC4 (struct analogix_dp_plat_data*) ; 

__attribute__((used)) static int FUNC5(struct analogix_dp_plat_data *plat_data)
{
	struct rockchip_dp_device *dp = FUNC4(plat_data);
	int ret;

	ret = FUNC2(dp->pclk);
	if (ret < 0) {
		FUNC0(dp->dev, "failed to enable pclk %d\n", ret);
		return ret;
	}

	ret = FUNC3(dp);
	if (ret < 0) {
		FUNC0(dp->dev, "failed to dp pre init %d\n", ret);
		FUNC1(dp->pclk);
		return ret;
	}

	return ret;
}