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
struct gl520_data {int /*<<< orphan*/ ** groups; scalar_t__ two_temps; struct i2c_client* client; int /*<<< orphan*/  update_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct gl520_data*,int /*<<< orphan*/ **) ; 
 struct gl520_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gl520_group ; 
 int /*<<< orphan*/  gl520_group_in4 ; 
 int /*<<< orphan*/  gl520_group_temp2 ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct gl520_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
		       const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct gl520_data *data;

	data = FUNC2(dev, sizeof(struct gl520_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(client, data);
	FUNC5(&data->update_lock);
	data->client = client;

	/* Initialize the GL520SM chip */
	FUNC3(client);

	/* sysfs hooks */
	data->groups[0] = &gl520_group;

	if (data->two_temps)
		data->groups[1] = &gl520_group_temp2;
	else
		data->groups[1] = &gl520_group_in4;

	hwmon_dev = FUNC1(dev, client->name,
							   data, data->groups);
	return FUNC0(hwmon_dev);
}