#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__** info; int /*<<< orphan*/ * ops; } ;
struct TYPE_3__ {int* config; int /*<<< orphan*/  type; } ;
struct tmp421_data {unsigned long channels; int* temp_config; TYPE_2__ chip; TYPE_1__ temp_info; TYPE_1__** info; struct i2c_client* client; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {unsigned long driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HWMON_T_FAULT ; 
 int HWMON_T_INPUT ; 
 int FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct tmp421_data*,TYPE_2__*,int /*<<< orphan*/ *) ; 
 struct tmp421_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwmon_temp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct device*) ; 
 int FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  tmp421_ops ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct tmp421_data *data;
	int i, err;

	data = FUNC2(dev, sizeof(struct tmp421_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC3(&data->update_lock);
	if (client->dev.of_node)
		data->channels = (unsigned long)
			FUNC4(&client->dev);
	else
		data->channels = id->driver_data;
	data->client = client;

	err = FUNC5(client);
	if (err)
		return err;

	for (i = 0; i < data->channels; i++)
		data->temp_config[i] = HWMON_T_INPUT | HWMON_T_FAULT;

	data->chip.ops = &tmp421_ops;
	data->chip.info = data->info;

	data->info[0] = &data->temp_info;

	data->temp_info.type = hwmon_temp;
	data->temp_info.config = data->temp_config;

	hwmon_dev = FUNC1(dev, client->name,
							 data,
							 &data->chip,
							 NULL);
	return FUNC0(hwmon_dev);
}