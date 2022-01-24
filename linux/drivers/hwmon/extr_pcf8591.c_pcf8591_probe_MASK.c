#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pcf8591_data {int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct i2c_client {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_attr_in2_input ; 
 int /*<<< orphan*/  dev_attr_in3_input ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 struct pcf8591_data* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct pcf8591_data*) ; 
 int input_mode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcf8591_attr_group ; 
 int /*<<< orphan*/  pcf8591_attr_group_opt ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct pcf8591_data *data;
	int err;

	data = FUNC3(&client->dev, sizeof(struct pcf8591_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC5(client, data);
	FUNC6(&data->update_lock);

	/* Initialize the PCF8591 chip */
	FUNC7(client);

	/* Register sysfs hooks */
	err = FUNC8(&client->dev.kobj, &pcf8591_attr_group);
	if (err)
		return err;

	/* Register input2 if not in "two differential inputs" mode */
	if (input_mode != 3) {
		err = FUNC2(&client->dev, &dev_attr_in2_input);
		if (err)
			goto exit_sysfs_remove;
	}

	/* Register input3 only in "four single ended inputs" mode */
	if (input_mode == 0) {
		err = FUNC2(&client->dev, &dev_attr_in3_input);
		if (err)
			goto exit_sysfs_remove;
	}

	data->hwmon_dev = FUNC4(&client->dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_sysfs_remove;
	}

	return 0;

exit_sysfs_remove:
	FUNC9(&client->dev.kobj, &pcf8591_attr_group_opt);
	FUNC9(&client->dev.kobj, &pcf8591_attr_group);
	return err;
}