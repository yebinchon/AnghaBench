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
struct ina209_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 struct device* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ina209_data*,int /*<<< orphan*/ ) ; 
 struct ina209_data* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct ina209_data*) ; 
 int /*<<< orphan*/  ina209_groups ; 
 int FUNC6 (struct i2c_client*,struct ina209_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct ina209_data*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct i2c_adapter *adapter = client->adapter;
	struct ina209_data *data;
	struct device *hwmon_dev;
	int ret;

	if (!FUNC4(adapter, I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	data = FUNC3(&client->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC5(client, data);
	data->client = client;
	FUNC8(&data->update_lock);

	ret = FUNC6(client, data);
	if (ret)
		return ret;

	hwmon_dev = FUNC2(&client->dev,
							   client->name,
							   data, ina209_groups);
	if (FUNC0(hwmon_dev)) {
		ret = FUNC1(hwmon_dev);
		goto out_restore_conf;
	}

	return 0;

out_restore_conf:
	FUNC7(client, data);
	return ret;
}