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
struct amc6821_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  amc6821_groups ; 
 int FUNC1 (struct i2c_client*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct amc6821_data*,int /*<<< orphan*/ ) ; 
 struct amc6821_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct amc6821_data *data;
	struct device *hwmon_dev;
	int err;

	data = FUNC3(dev, sizeof(struct amc6821_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC4(&data->update_lock);

	/*
	 * Initialize the amc6821 chip
	 */
	err = FUNC1(client);
	if (err)
		return err;

	hwmon_dev = FUNC2(dev, client->name,
							   data,
							   amc6821_groups);
	return FUNC0(hwmon_dev);
}