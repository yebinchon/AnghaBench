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
struct adm9240_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  adm9240_groups ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct adm9240_data*,int /*<<< orphan*/ ) ; 
 struct adm9240_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adm9240_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *new_client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &new_client->dev;
	struct device *hwmon_dev;
	struct adm9240_data *data;

	data = FUNC3(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(new_client, data);
	data->client = new_client;
	FUNC5(&data->update_lock);

	FUNC1(new_client);

	hwmon_dev = FUNC2(dev,
							   new_client->name,
							   data,
							   adm9240_groups);
	return FUNC0(hwmon_dev);
}