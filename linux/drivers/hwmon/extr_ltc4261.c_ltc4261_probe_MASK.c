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
struct ltc4261_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  LTC4261_FAULT ; 
 int /*<<< orphan*/  LTC4261_STATUS ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct ltc4261_data*,int /*<<< orphan*/ ) ; 
 struct ltc4261_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ltc4261_groups ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct device *dev = &client->dev;
	struct ltc4261_data *data;
	struct device *hwmon_dev;

	if (!FUNC4(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	if (FUNC5(client, LTC4261_STATUS) < 0) {
		FUNC1(dev, "Failed to read status register\n");
		return -ENODEV;
	}

	data = FUNC3(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC7(&data->update_lock);

	/* Clear faults */
	FUNC6(client, LTC4261_FAULT, 0x00);

	hwmon_dev = FUNC2(dev, client->name,
							   data,
							   ltc4261_groups);
	return FUNC0(hwmon_dev);
}