#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  kobj; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pc87427_sio_data {scalar_t__* address; } ;
struct pc87427_data {scalar_t__* address; char* name; int fan_enabled; int pwm_enabled; int temp_enabled; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_name ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int) ; 
 struct pc87427_sio_data* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct pc87427_data* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * pc87427_group_fan ; 
 int /*<<< orphan*/ * pc87427_group_pwm ; 
 int /*<<< orphan*/ * pc87427_group_temp ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (struct platform_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct pc87427_data*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct pc87427_sio_data *sio_data = FUNC3(&pdev->dev);
	struct pc87427_data *data;
	int i, err, res_count;

	data = FUNC5(&pdev->dev, sizeof(struct pc87427_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->address[0] = sio_data->address[0];
	data->address[1] = sio_data->address[1];
	res_count = (data->address[0] != 0) + (data->address[1] != 0);

	err = FUNC10(pdev, res_count);
	if (err)
		return err;

	FUNC7(&data->lock);
	data->name = "pc87427";
	FUNC11(pdev, data);
	FUNC8(&pdev->dev);

	/* Register sysfs hooks */
	err = FUNC4(&pdev->dev, &dev_attr_name);
	if (err)
		return err;
	for (i = 0; i < 8; i++) {
		if (!(data->fan_enabled & (1 << i)))
			continue;
		err = FUNC12(&pdev->dev.kobj,
					 &pc87427_group_fan[i]);
		if (err)
			goto exit_remove_files;
	}
	for (i = 0; i < 4; i++) {
		if (!(data->pwm_enabled & (1 << i)))
			continue;
		err = FUNC12(&pdev->dev.kobj,
					 &pc87427_group_pwm[i]);
		if (err)
			goto exit_remove_files;
	}
	for (i = 0; i < 6; i++) {
		if (!(data->temp_enabled & (1 << i)))
			continue;
		err = FUNC12(&pdev->dev.kobj,
					 &pc87427_group_temp[i]);
		if (err)
			goto exit_remove_files;
	}

	data->hwmon_dev = FUNC6(&pdev->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		FUNC2(&pdev->dev, "Class registration failed (%d)\n", err);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC9(&pdev->dev);
	return err;
}