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
struct tc654_data {int config; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  TC654_REG_CONFIG ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct tc654_data*,int /*<<< orphan*/ ) ; 
 struct tc654_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tc654_groups ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct tc654_data *data;
	struct device *hwmon_dev;
	int ret;

	if (!FUNC3(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	data = FUNC2(dev, sizeof(struct tc654_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC5(&data->update_lock);

	ret = FUNC4(client, TC654_REG_CONFIG);
	if (ret < 0)
		return ret;

	data->config = ret;

	hwmon_dev =
	    FUNC1(dev, client->name, data,
						   tc654_groups);
	return FUNC0(hwmon_dev);
}