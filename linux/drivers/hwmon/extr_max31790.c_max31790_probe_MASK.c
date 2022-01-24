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
struct max31790_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct max31790_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct max31790_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  max31790_chip_info ; 
 int FUNC4 (struct i2c_client*,struct max31790_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	struct max31790_data *data;
	struct device *hwmon_dev;
	int err;

	if (!FUNC3(adapter,
			I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	data = FUNC2(dev, sizeof(struct max31790_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC5(&data->update_lock);

	/*
	 * Initialize the max31790 chip
	 */
	err = FUNC4(client, data);
	if (err)
		return err;

	hwmon_dev = FUNC1(dev, client->name,
							 data,
							 &max31790_chip_info,
							 NULL);

	return FUNC0(hwmon_dev);
}