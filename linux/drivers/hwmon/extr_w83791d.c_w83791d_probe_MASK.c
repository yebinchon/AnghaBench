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
typedef  int u8 ;
struct w83791d_data {int* fan_min; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int NUMBER_OF_FANIN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W83791D_REG_DID_VID4 ; 
 int /*<<< orphan*/ * W83791D_REG_FAN_MIN ; 
 int /*<<< orphan*/  W83791D_REG_GPIO ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int,int,int) ; 
 struct w83791d_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct w83791d_data*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct i2c_client*) ; 
 int /*<<< orphan*/  w83791d_group ; 
 int /*<<< orphan*/  w83791d_group_fanpwm45 ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*) ; 
 int FUNC11 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct w83791d_data *data;
	struct device *dev = &client->dev;
	int i, err;
	u8 has_fanpwm45;

#ifdef DEBUG
	int val1;
	val1 = w83791d_read(client, W83791D_REG_DID_VID4);
	dev_dbg(dev, "Device ID version: %d.%d (0x%02x)\n",
			(val1 >> 5) & 0x07, (val1 >> 1) & 0x0f, val1);
#endif

	data = FUNC3(&client->dev, sizeof(struct w83791d_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC5(client, data);
	FUNC6(&data->update_lock);

	err = FUNC9(client);
	if (err)
		return err;

	/* Initialize the chip */
	FUNC10(client);

	/*
	 * If the fan_div is changed, make sure there is a rational
	 * fan_min in place
	 */
	for (i = 0; i < NUMBER_OF_FANIN; i++)
		data->fan_min[i] = FUNC11(client, W83791D_REG_FAN_MIN[i]);

	/* Register sysfs hooks */
	err = FUNC7(&client->dev.kobj, &w83791d_group);
	if (err)
		return err;

	/* Check if pins of fan/pwm 4-5 are in use as GPIO */
	has_fanpwm45 = FUNC11(client, W83791D_REG_GPIO) & 0x10;
	if (has_fanpwm45) {
		err = FUNC7(&client->dev.kobj,
					 &w83791d_group_fanpwm45);
		if (err)
			goto error4;
	}

	/* Everything is ready, now register the working device */
	data->hwmon_dev = FUNC4(dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto error5;
	}

	return 0;

error5:
	if (has_fanpwm45)
		FUNC8(&client->dev.kobj, &w83791d_group_fanpwm45);
error4:
	FUNC8(&client->dev.kobj, &w83791d_group);
	return err;
}