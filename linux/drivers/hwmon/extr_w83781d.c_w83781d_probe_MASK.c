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
struct w83781d_data {int /*<<< orphan*/ * lm75; int /*<<< orphan*/  hwmon_dev; int /*<<< orphan*/  type; struct i2c_client* client; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  lock; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct w83781d_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct w83781d_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC9 (struct device*) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 

__attribute__((used)) static int
FUNC11(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct w83781d_data *data;
	int err;

	data = FUNC2(dev, sizeof(struct w83781d_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(client, data);
	FUNC6(&data->lock);
	FUNC6(&data->update_lock);

	data->type = id->driver_data;
	data->client = client;

	/* attach secondary i2c lm75-like clients */
	err = FUNC8(client);
	if (err)
		return err;

	/* Initialize the chip */
	FUNC9(dev);

	/* Register sysfs hooks */
	err = FUNC7(dev, data->type, 0);
	if (err)
		goto exit_remove_files;

	data->hwmon_dev = FUNC3(dev);
	if (FUNC0(data->hwmon_dev)) {
		err = FUNC1(data->hwmon_dev);
		goto exit_remove_files;
	}

	return 0;

 exit_remove_files:
	FUNC10(dev);
	FUNC5(data->lm75[0]);
	FUNC5(data->lm75[1]);
	return err;
}