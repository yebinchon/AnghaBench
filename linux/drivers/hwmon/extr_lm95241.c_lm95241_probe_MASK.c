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
struct lm95241_data {int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct lm95241_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lm95241_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm95241_chip_info ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,struct lm95241_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct lm95241_data *data;
	struct device *hwmon_dev;

	data = FUNC2(dev, sizeof(struct lm95241_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC4(&data->update_lock);

	/* Initialize the LM95241 chip */
	FUNC3(client, data);

	hwmon_dev = FUNC1(dev, client->name,
							   data,
							   &lm95241_chip_info,
							   NULL);
	return FUNC0(hwmon_dev);
}