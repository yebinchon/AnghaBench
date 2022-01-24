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
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct ds1621_data {struct i2c_client* client; int /*<<< orphan*/  kind; int /*<<< orphan*/  update_lock; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ds1621_data*,int /*<<< orphan*/ ) ; 
 struct ds1621_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ds1621_groups ; 
 int /*<<< orphan*/  FUNC3 (struct ds1621_data*,struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct ds1621_data *data;
	struct device *hwmon_dev;

	data = FUNC2(&client->dev, sizeof(struct ds1621_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(&data->update_lock);

	data->kind = id->driver_data;
	data->client = client;

	/* Initialize the DS1621 chip */
	FUNC3(data, client);

	hwmon_dev = FUNC1(&client->dev,
							   client->name, data,
							   ds1621_groups);
	return FUNC0(hwmon_dev);
}