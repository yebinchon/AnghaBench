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
struct max6697_data {int type; int /*<<< orphan*/  update_lock; struct i2c_client* client; int /*<<< orphan*/ * chip; } ;
struct i2c_device_id {int driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
typedef  enum chips { ____Placeholder_chips } chips ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct max6697_data*,int /*<<< orphan*/ ) ; 
 struct max6697_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * max6697_chip_data ; 
 int /*<<< orphan*/  max6697_groups ; 
 int FUNC4 (struct max6697_data*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct device*) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	struct max6697_data *data;
	struct device *hwmon_dev;
	int err;

	if (!FUNC3(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	data = FUNC2(dev, sizeof(struct max6697_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	if (client->dev.of_node)
		data->type = (enum chips)FUNC6(&client->dev);
	else
		data->type = id->driver_data;
	data->chip = &max6697_chip_data[data->type];
	data->client = client;
	FUNC5(&data->update_lock);

	err = FUNC4(data, client);
	if (err)
		return err;

	hwmon_dev = FUNC1(dev, client->name,
							   data,
							   max6697_groups);
	return FUNC0(hwmon_dev);
}