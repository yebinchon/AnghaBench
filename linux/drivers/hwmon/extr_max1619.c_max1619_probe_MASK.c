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
struct max1619_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct max1619_data*,int /*<<< orphan*/ ) ; 
 struct max1619_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  max1619_groups ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *new_client,
			 const struct i2c_device_id *id)
{
	struct max1619_data *data;
	struct device *hwmon_dev;

	data = FUNC2(&new_client->dev, sizeof(struct max1619_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = new_client;
	FUNC4(&data->update_lock);

	/* Initialize the MAX1619 chip */
	FUNC3(new_client);

	hwmon_dev = FUNC1(&new_client->dev,
							   new_client->name,
							   data,
							   max1619_groups);
	return FUNC0(hwmon_dev);
}