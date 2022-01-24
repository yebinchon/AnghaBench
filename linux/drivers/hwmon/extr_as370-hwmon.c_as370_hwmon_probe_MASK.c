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
struct as370_hwmon {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  as370_chip_info ; 
 struct device* FUNC3 (struct device*,char*,struct as370_hwmon*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct as370_hwmon* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct as370_hwmon*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *hwmon_dev;
	struct as370_hwmon *hwmon;
	struct device *dev = &pdev->dev;

	hwmon = FUNC4(dev, sizeof(*hwmon), GFP_KERNEL);
	if (!hwmon)
		return -ENOMEM;

	hwmon->base = FUNC5(pdev, 0);
	if (FUNC0(hwmon->base))
		return FUNC1(hwmon->base);

	FUNC6(hwmon);

	hwmon_dev = FUNC3(dev,
							 "as370",
							 hwmon,
							 &as370_chip_info,
							 NULL);
	return FUNC2(hwmon_dev);
}