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
struct lm95234_data {int /*<<< orphan*/ ** groups; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct lm95234_data*,int /*<<< orphan*/ **) ; 
 struct lm95234_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ lm95234 ; 
 int /*<<< orphan*/  lm95234_common_group ; 
 int /*<<< orphan*/  lm95234_group ; 
 int FUNC3 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct lm95234_data *data;
	struct device *hwmon_dev;
	int err;

	data = FUNC2(dev, sizeof(struct lm95234_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC4(&data->update_lock);

	/* Initialize the LM95234 chip */
	err = FUNC3(client);
	if (err < 0)
		return err;

	data->groups[0] = &lm95234_common_group;
	if (id->driver_data == lm95234)
		data->groups[1] = &lm95234_group;

	hwmon_dev = FUNC1(dev, client->name,
							   data, data->groups);
	return FUNC0(hwmon_dev);
}