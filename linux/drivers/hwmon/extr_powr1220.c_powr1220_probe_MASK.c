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
struct powr1220_data {struct i2c_client* client; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct powr1220_data*,int /*<<< orphan*/ ) ; 
 struct powr1220_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  powr1220_groups ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
		const struct i2c_device_id *id)
{
	struct powr1220_data *data;
	struct device *hwmon_dev;

	if (!FUNC3(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	data = FUNC2(&client->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(&data->update_lock);
	data->client = client;

	hwmon_dev = FUNC1(&client->dev,
			client->name, data, powr1220_groups);

	return FUNC0(hwmon_dev);
}