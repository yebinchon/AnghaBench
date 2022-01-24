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
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 scalar_t__ SOC_TYPE_VR9_2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct device* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ltq_chip_info ; 
 int /*<<< orphan*/  ltq_cputemp_disable ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *hwmon_dev;
	int err = 0;

	/* available on vr9 v1.2 SoCs only */
	if (FUNC6() != SOC_TYPE_VR9_2)
		return -ENODEV;

	err = FUNC3(&pdev->dev, ltq_cputemp_disable, NULL);
	if (err)
		return err;

	FUNC5();

	hwmon_dev = FUNC4(&pdev->dev,
							 "ltq_cputemp",
							 NULL,
							 &ltq_chip_info,
							 NULL);

	if (FUNC0(hwmon_dev)) {
		FUNC2(&pdev->dev, "Failed to register as hwmon device");
		return FUNC1(hwmon_dev);
	}

	return 0;
}