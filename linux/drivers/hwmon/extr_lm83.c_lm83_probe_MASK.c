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
struct lm83_data {int /*<<< orphan*/ ** groups; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {scalar_t__ driver_data; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct lm83_data*,int /*<<< orphan*/ **) ; 
 struct lm83_data* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ lm83 ; 
 int /*<<< orphan*/  lm83_group ; 
 int /*<<< orphan*/  lm83_group_opt ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *new_client,
		      const struct i2c_device_id *id)
{
	struct device *hwmon_dev;
	struct lm83_data *data;

	data = FUNC2(&new_client->dev, sizeof(struct lm83_data),
			    GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = new_client;
	FUNC3(&data->update_lock);

	/*
	 * Register sysfs hooks
	 * The LM82 can only monitor one external diode which is
	 * at the same register as the LM83 temp3 entry - so we
	 * declare 1 and 3 common, and then 2 and 4 only for the LM83.
	 */
	data->groups[0] = &lm83_group;
	if (id->driver_data == lm83)
		data->groups[1] = &lm83_group_opt;

	hwmon_dev = FUNC1(&new_client->dev,
							   new_client->name,
							   data, data->groups);
	return FUNC0(hwmon_dev);
}