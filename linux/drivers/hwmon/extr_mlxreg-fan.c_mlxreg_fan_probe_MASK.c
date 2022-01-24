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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mlxreg_fan {struct device* cdev; int /*<<< orphan*/  regmap; struct device* dev; } ;
struct mlxreg_core_platform_data {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_THERMAL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct mlxreg_core_platform_data* FUNC4 (struct device*) ; 
 struct device* FUNC5 (struct device*,char*,struct mlxreg_fan*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct mlxreg_fan* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct device* FUNC7 (struct device*,int /*<<< orphan*/ *,char*,struct mlxreg_fan*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct mlxreg_fan*,struct mlxreg_core_platform_data*) ; 
 int /*<<< orphan*/  mlxreg_fan_cooling_ops ; 
 int /*<<< orphan*/  mlxreg_fan_hwmon_chip_info ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct mlxreg_core_platform_data *pdata;
	struct device *dev = &pdev->dev;
	struct mlxreg_fan *fan;
	struct device *hwm;
	int err;

	pdata = FUNC4(dev);
	if (!pdata) {
		FUNC3(dev, "Failed to get platform data.\n");
		return -EINVAL;
	}

	fan = FUNC6(dev, sizeof(*fan), GFP_KERNEL);
	if (!fan)
		return -ENOMEM;

	fan->dev = dev;
	fan->regmap = pdata->regmap;

	err = FUNC8(fan, pdata);
	if (err)
		return err;

	hwm = FUNC5(dev, "mlxreg_fan",
						   fan,
						   &mlxreg_fan_hwmon_chip_info,
						   NULL);
	if (FUNC0(hwm)) {
		FUNC3(dev, "Failed to register hwmon device\n");
		return FUNC2(hwm);
	}

	if (FUNC1(CONFIG_THERMAL)) {
		fan->cdev = FUNC7(dev,
			NULL, "mlxreg_fan", fan, &mlxreg_fan_cooling_ops);
		if (FUNC0(fan->cdev)) {
			FUNC3(dev, "Failed to register cooling device\n");
			return FUNC2(fan->cdev);
		}
	}

	return 0;
}