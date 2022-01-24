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
struct i2c_device_id {scalar_t__ driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct adm1031_data {scalar_t__ chip_type; int /*<<< orphan*/ ** groups; int /*<<< orphan*/ * chan_select_table; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 scalar_t__ adm1030 ; 
 scalar_t__ adm1031 ; 
 int /*<<< orphan*/  adm1031_group ; 
 int /*<<< orphan*/  adm1031_group_opt ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  auto_channel_select_table_adm1030 ; 
 int /*<<< orphan*/  auto_channel_select_table_adm1031 ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct adm1031_data*,int /*<<< orphan*/ **) ; 
 struct adm1031_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adm1031_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct adm1031_data *data;

	data = FUNC3(dev, sizeof(struct adm1031_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(client, data);
	data->client = client;
	data->chip_type = id->driver_data;
	FUNC5(&data->update_lock);

	if (data->chip_type == adm1030)
		data->chan_select_table = &auto_channel_select_table_adm1030;
	else
		data->chan_select_table = &auto_channel_select_table_adm1031;

	/* Initialize the ADM1031 chip */
	FUNC1(client);

	/* sysfs hooks */
	data->groups[0] = &adm1031_group;
	if (data->chip_type == adm1031)
		data->groups[1] = &adm1031_group_opt;

	hwmon_dev = FUNC2(dev, client->name,
							   data, data->groups);
	return FUNC0(hwmon_dev);
}