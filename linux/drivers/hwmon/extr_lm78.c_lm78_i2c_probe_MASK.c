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
struct lm78_data {int /*<<< orphan*/  type; struct i2c_client* client; } ;
struct i2c_device_id {int /*<<< orphan*/  driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct lm78_data*,int /*<<< orphan*/ ) ; 
 struct lm78_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lm78_groups ; 
 int /*<<< orphan*/  FUNC3 (struct lm78_data*) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			  const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct lm78_data *data;

	data = FUNC2(dev, sizeof(struct lm78_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	data->type = id->driver_data;

	/* Initialize the LM78 chip */
	FUNC3(data);

	hwmon_dev = FUNC1(dev, client->name,
							   data, lm78_groups);
	return FUNC0(hwmon_dev);
}