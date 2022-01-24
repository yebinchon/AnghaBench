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
struct sht15_data {int /*<<< orphan*/  read_lock; int /*<<< orphan*/  reg; int /*<<< orphan*/  nb; int /*<<< orphan*/  hwmon_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct sht15_data* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sht15_attr_group ; 
 scalar_t__ FUNC7 (struct sht15_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct sht15_data *data = FUNC4(pdev);

	/*
	 * Make sure any reads from the device are done and
	 * prevent new ones beginning
	 */
	FUNC2(&data->read_lock);
	if (FUNC7(data)) {
		FUNC3(&data->read_lock);
		return -EFAULT;
	}
	FUNC1(data->hwmon_dev);
	FUNC8(&pdev->dev.kobj, &sht15_attr_group);
	if (!FUNC0(data->reg)) {
		FUNC6(data->reg, &data->nb);
		FUNC5(data->reg);
	}

	FUNC3(&data->read_lock);

	return 0;
}