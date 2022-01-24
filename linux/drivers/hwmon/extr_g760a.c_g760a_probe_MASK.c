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
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; struct device dev; } ;
struct g760a_data {int /*<<< orphan*/  clk; int /*<<< orphan*/  fan_div; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  G760A_DEFAULT_CLK ; 
 int /*<<< orphan*/  G760A_DEFAULT_FAN_DIV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct g760a_data*,int /*<<< orphan*/ ) ; 
 struct g760a_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g760a_groups ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct g760a_data *data;
	struct device *hwmon_dev;

	if (!FUNC3(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -EIO;

	data = FUNC2(dev, sizeof(struct g760a_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC4(&data->update_lock);

	/* setup default configuration for now */
	data->fan_div = G760A_DEFAULT_FAN_DIV;
	data->clk = G760A_DEFAULT_CLK;

	hwmon_dev = FUNC1(dev, client->name,
							   data,
							   g760a_groups);
	return FUNC0(hwmon_dev);
}