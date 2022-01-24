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
struct adt7411_data {int /*<<< orphan*/  next_update; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  device_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  adt7411_chip_info ; 
 int /*<<< orphan*/  adt7411_groups ; 
 int FUNC1 (struct adt7411_data*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct adt7411_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct adt7411_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adt7411_data*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
				   const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct adt7411_data *data;
	struct device *hwmon_dev;
	int ret;

	data = FUNC3(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(client, data);
	data->client = client;
	FUNC5(&data->device_lock);
	FUNC5(&data->update_lock);

	ret = FUNC1(data);
	if (ret < 0)
		return ret;

	/* force update on first occasion */
	data->next_update = jiffies;

	hwmon_dev = FUNC2(dev, client->name,
							 data,
							 &adt7411_chip_info,
							 adt7411_groups);
	return FUNC0(hwmon_dev);
}