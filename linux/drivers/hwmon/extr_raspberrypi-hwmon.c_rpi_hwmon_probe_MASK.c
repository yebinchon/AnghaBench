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
struct rpi_hwmon_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  get_values_poll_work; int /*<<< orphan*/  fw; } ;
struct device {int /*<<< orphan*/  parent; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,struct rpi_hwmon_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rpi_hwmon_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_values_poll ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct rpi_hwmon_data*) ; 
 int /*<<< orphan*/  rpi_chip_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct rpi_hwmon_data *data;

	data = FUNC4(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* Parent driver assure that firmware is correct */
	data->fw = FUNC2(dev->parent);

	data->hwmon_dev = FUNC3(dev, "rpi_volt",
							       data,
							       &rpi_chip_info,
							       NULL);

	FUNC0(&data->get_values_poll_work, get_values_poll);
	FUNC5(pdev, data);

	if (!FUNC1(data->hwmon_dev))
		FUNC6(&data->get_values_poll_work, 2 * HZ);

	return FUNC1(data->hwmon_dev);
}