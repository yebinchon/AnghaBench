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
struct emc6w201_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct emc6w201_data*,int /*<<< orphan*/ ) ; 
 struct emc6w201_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  emc6w201_groups ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct emc6w201_data *data;
	struct device *hwmon_dev;

	data = FUNC2(dev, sizeof(struct emc6w201_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC3(&data->update_lock);

	hwmon_dev = FUNC1(dev, client->name,
							   data,
							   emc6w201_groups);
	return FUNC0(hwmon_dev);
}