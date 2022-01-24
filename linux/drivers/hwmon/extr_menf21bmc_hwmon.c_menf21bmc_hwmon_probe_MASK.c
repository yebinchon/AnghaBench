#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct menf21bmc_hwmon {struct i2c_client* i2c_client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 struct device* FUNC4 (TYPE_1__*,char*,struct menf21bmc_hwmon*,int /*<<< orphan*/ ) ; 
 struct menf21bmc_hwmon* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct menf21bmc_hwmon*) ; 
 int /*<<< orphan*/  menf21bmc_hwmon_groups ; 
 struct i2c_client* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	int ret;
	struct menf21bmc_hwmon *drv_data;
	struct i2c_client *i2c_client = FUNC7(pdev->dev.parent);
	struct device *hwmon_dev;

	drv_data = FUNC5(&pdev->dev, sizeof(struct menf21bmc_hwmon),
				GFP_KERNEL);
	if (!drv_data)
		return -ENOMEM;

	drv_data->i2c_client = i2c_client;

	ret = FUNC6(drv_data);
	if (ret) {
		FUNC2(&pdev->dev, "failed to read sensor limits");
		return ret;
	}

	hwmon_dev = FUNC4(&pdev->dev,
						   "menf21bmc", drv_data,
						   menf21bmc_hwmon_groups);
	if (FUNC0(hwmon_dev))
		return FUNC1(hwmon_dev);

	FUNC3(&pdev->dev, "MEN 14F021P00 BMC hwmon device enabled");

	return 0;
}