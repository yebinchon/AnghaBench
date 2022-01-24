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
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct adm1021_data {scalar_t__ type; int /*<<< orphan*/ ** groups; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  adm1021_group ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  adm1021_min_group ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct adm1021_data*,int /*<<< orphan*/ **) ; 
 struct adm1021_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ lm84 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  read_only ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct adm1021_data *data;
	struct device *hwmon_dev;

	data = FUNC3(dev, sizeof(struct adm1021_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	data->type = id->driver_data;
	FUNC4(&data->update_lock);

	/* Initialize the ADM1021 chip */
	if (data->type != lm84 && !read_only)
		FUNC1(client);

	data->groups[0] = &adm1021_group;
	if (data->type != lm84)
		data->groups[1] = &adm1021_min_group;

	hwmon_dev = FUNC2(dev, client->name,
							   data, data->groups);

	return FUNC0(hwmon_dev);
}