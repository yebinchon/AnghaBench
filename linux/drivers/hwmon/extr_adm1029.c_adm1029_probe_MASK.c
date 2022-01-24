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
struct adm1029_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  adm1029_groups ; 
 scalar_t__ FUNC1 (struct i2c_client*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct adm1029_data*,int /*<<< orphan*/ ) ; 
 struct adm1029_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct adm1029_data *data;
	struct device *hwmon_dev;

	data = FUNC3(dev, sizeof(struct adm1029_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC4(&data->update_lock);

	/*
	 * Initialize the ADM1029 chip
	 * Check config register
	 */
	if (FUNC1(client) == 0)
		return -ENODEV;

	hwmon_dev = FUNC2(dev, client->name,
							   data,
							   adm1029_groups);
	return FUNC0(hwmon_dev);
}