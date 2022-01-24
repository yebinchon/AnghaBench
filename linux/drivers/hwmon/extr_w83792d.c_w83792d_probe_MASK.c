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
struct w83792d_data {int /*<<< orphan*/  hwmon_dev; void** fan_min; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * W83792D_REG_FAN_MIN ; 
 int /*<<< orphan*/  W83792D_REG_GPIO_EN ; 
 int /*<<< orphan*/  W83792D_REG_PIN ; 
 struct w83792d_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct w83792d_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  w83792d_group ; 
 int /*<<< orphan*/ * w83792d_group_fan ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 void* FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct w83792d_data *data;
	struct device *dev = &client->dev;
	int i, val1, err;

	data = FUNC3(dev, sizeof(struct w83792d_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC5(client, data);
	FUNC6(&data->update_lock);

	err = FUNC9(client);
	if (err)
		return err;

	/* Initialize the chip */
	FUNC10(client);

	/* A few vars need to be filled upon startup */
	for (i = 0; i < 7; i++) {
		data->fan_min[i] = FUNC11(client,
					W83792D_REG_FAN_MIN[i]);
	}

	/* Register sysfs hooks */
	err = FUNC7(&dev->kobj, &w83792d_group);
	if (err)
		return err;

	/*
	 * Read GPIO enable register to check if pins for fan 4,5 are used as
	 * GPIO
	 */
	val1 = FUNC11(client, W83792D_REG_GPIO_EN);

	if (!(val1 & 0x40)) {
		err = FUNC7(&dev->kobj, &w83792d_group_fan[0]);
		if (err)
			goto exit_remove_files;
	}

	if (!(val1 & 0x20)) {
		err = FUNC7(&dev->kobj, &w83792d_group_fan[1]);
		if (err)
			goto exit_remove_files;
	}

	val1 = FUNC11(client, W83792D_REG_PIN);
	if (val1 & 0x40) {
		err = FUNC7(&dev->kobj, &w83792d_group_fan[2]);
		if (err)
			goto exit_remove_files;
	}

	if (val1 & 0x04) {
		err = FUNC7(&dev->kobj, &w83792d_group_fan[3]);
		if (err)
			goto exit_remove_files;
	}

	data->hwmon_dev = FUNC4(dev);
	if (FUNC1(data->hwmon_dev)) {
		err = FUNC2(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

exit_remove_files:
	FUNC8(&dev->kobj, &w83792d_group);
	for (i = 0; i < FUNC0(w83792d_group_fan); i++)
		FUNC8(&dev->kobj, &w83792d_group_fan[i]);
	return err;
}