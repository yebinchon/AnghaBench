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
typedef  int u32 ;
struct ltc4151_data {int shunt; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct ltc4151_data*,int /*<<< orphan*/ ) ; 
 struct ltc4151_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ltc4151_groups ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	struct ltc4151_data *data;
	struct device *hwmon_dev;
	u32 shunt;

	if (!FUNC3(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	data = FUNC2(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	if (FUNC5(client->dev.of_node,
				 "shunt-resistor-micro-ohms", &shunt))
		shunt = 1000; /* 1 mOhm if not set via DT */

	if (shunt == 0)
		return -EINVAL;

	data->shunt = shunt;

	data->client = client;
	FUNC4(&data->update_lock);

	hwmon_dev = FUNC1(dev, client->name,
							   data,
							   ltc4151_groups);
	return FUNC0(hwmon_dev);
}