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
struct g762_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct g762_data*,int /*<<< orphan*/ ) ; 
 struct g762_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct device*) ; 
 int /*<<< orphan*/  g762_groups ; 
 int FUNC4 (struct i2c_client*) ; 
 int FUNC5 (struct i2c_client*) ; 
 int FUNC6 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,struct g762_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client, const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct g762_data *data;
	int ret;

	if (!FUNC7(client->adapter,
				     I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	data = FUNC2(dev, sizeof(struct g762_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC8(client, data);
	data->client = client;
	FUNC9(&data->update_lock);

	/* Enable fan failure detection and fan out of control protection */
	ret = FUNC3(dev);
	if (ret)
		return ret;

	/* Get configuration via DT ... */
	ret = FUNC4(client);
	if (ret)
		return ret;
	ret = FUNC5(client);
	if (ret)
		return ret;
	/* ... or platform_data */
	ret = FUNC6(client);
	if (ret)
		return ret;

	hwmon_dev = FUNC1(dev, client->name,
							    data, g762_groups);
	return FUNC0(hwmon_dev);
}