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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct platform_data {int /*<<< orphan*/  attr_groups; scalar_t__ nr_sensor_groups; scalar_t__ sensors_count; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRVNAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int FUNC1 (struct platform_device*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct platform_data*,int /*<<< orphan*/ ) ; 
 struct platform_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,struct platform_data*) ; 
 int FUNC5 (struct platform_device*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct platform_data *pdata;
	struct device *hwmon_dev;
	int err;

	pdata = FUNC3(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
	if (!pdata)
		return -ENOMEM;

	FUNC4(pdev, pdata);
	pdata->sensors_count = 0;
	pdata->nr_sensor_groups = 0;
	err = FUNC5(pdev);
	if (err)
		return err;

	/* Create sysfs attribute data for each sensor found in the DT */
	err = FUNC1(pdev);
	if (err)
		return err;

	/* Finally, register with hwmon */
	hwmon_dev = FUNC2(&pdev->dev, DRVNAME,
							   pdata,
							   pdata->attr_groups);

	return FUNC0(hwmon_dev);
}