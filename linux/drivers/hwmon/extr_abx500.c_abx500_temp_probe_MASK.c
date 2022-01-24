#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_5__ {scalar_t__ irq_handler; int /*<<< orphan*/  show_label; int /*<<< orphan*/  show_name; int /*<<< orphan*/  read_sensor; } ;
struct abx500_temp {int /*<<< orphan*/  hwmon_dev; TYPE_1__ ops; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; struct platform_device* pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct abx500_temp*) ; 
 int /*<<< orphan*/  abx500_temp_group ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,int) ; 
 struct abx500_temp* FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpadc_monitor ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct abx500_temp*) ; 
 int FUNC10 (struct platform_device*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct abx500_temp *data;
	int err;

	data = FUNC5(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->pdev = pdev;
	FUNC8(&data->lock);

	/* Chip specific initialization */
	err = FUNC3(data);
	if (err	< 0 || !data->ops.read_sensor || !data->ops.show_name ||
			!data->ops.show_label)
		return err;

	FUNC0(&data->work, gpadc_monitor);

	FUNC9(pdev, data);

	err = FUNC11(&pdev->dev.kobj, &abx500_temp_group);
	if (err < 0) {
		FUNC4(&pdev->dev, "Create sysfs group failed (%d)\n", err);
		return err;
	}

	data->hwmon_dev = FUNC6(&pdev->dev);
	if (FUNC1(data->hwmon_dev)) {
		err = FUNC2(data->hwmon_dev);
		FUNC4(&pdev->dev, "Class registration failed (%d)\n", err);
		goto exit_sysfs_group;
	}

	if (data->ops.irq_handler) {
		err = FUNC10(pdev);
		if (err < 0)
			goto exit_hwmon_reg;
	}
	return 0;

exit_hwmon_reg:
	FUNC7(data->hwmon_dev);
exit_sysfs_group:
	FUNC12(&pdev->dev.kobj, &abx500_temp_group);
	return err;
}