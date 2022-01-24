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
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct adt7470_data {int num_temp_sensors; struct device* auto_update; int /*<<< orphan*/  lock; struct i2c_client* client; int /*<<< orphan*/  auto_update_interval; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTO_UPDATE_INTERVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  adt7470_groups ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  adt7470_update_thread ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct device* FUNC5 (struct device*,int /*<<< orphan*/ ,struct adt7470_data*,int /*<<< orphan*/ ) ; 
 struct adt7470_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct i2c_client*,struct adt7470_data*) ; 
 struct device* FUNC8 (int /*<<< orphan*/ ,struct i2c_client*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct adt7470_data *data;
	struct device *hwmon_dev;

	data = FUNC6(dev, sizeof(struct adt7470_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->num_temp_sensors = -1;
	data->auto_update_interval = AUTO_UPDATE_INTERVAL;

	FUNC7(client, data);
	data->client = client;
	FUNC9(&data->lock);

	FUNC3(&client->dev, "%s chip found\n", client->name);

	/* Initialize the ADT7470 chip */
	FUNC2(client);

	/* Register sysfs hooks */
	hwmon_dev = FUNC5(dev, client->name,
							   data,
							   adt7470_groups);

	if (FUNC0(hwmon_dev))
		return FUNC1(hwmon_dev);

	data->auto_update = FUNC8(adt7470_update_thread, client, "%s",
					FUNC4(hwmon_dev));
	if (FUNC0(data->auto_update)) {
		return FUNC1(data->auto_update);
	}

	return 0;
}