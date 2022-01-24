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
struct thmc50_data {int /*<<< orphan*/ ** groups; scalar_t__ has_temp3; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  type; struct i2c_client* client; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct thmc50_data*,int /*<<< orphan*/ **) ; 
 struct thmc50_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  temp3_group ; 
 int /*<<< orphan*/  thmc50_group ; 
 int /*<<< orphan*/  FUNC4 (struct thmc50_data*) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct thmc50_data *data;
	struct device *hwmon_dev;
	int idx = 0;

	data = FUNC2(dev, sizeof(struct thmc50_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	data->type = id->driver_data;
	FUNC3(&data->update_lock);

	FUNC4(data);

	/* sysfs hooks */
	data->groups[idx++] = &thmc50_group;

	/* Register additional ADM1022 sysfs hooks */
	if (data->has_temp3)
		data->groups[idx++] = &temp3_group;

	hwmon_dev = FUNC1(dev, client->name,
							   data, data->groups);
	return FUNC0(hwmon_dev);
}