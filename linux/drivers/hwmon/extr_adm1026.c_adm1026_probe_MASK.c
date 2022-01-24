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
struct adm1026_data {int config1; int /*<<< orphan*/ ** groups; int /*<<< orphan*/  vrm; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int CFG1_AIN8_9 ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  adm1026_group ; 
 int /*<<< orphan*/  adm1026_group_in8_9 ; 
 int /*<<< orphan*/  adm1026_group_temp3 ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct adm1026_data*,int /*<<< orphan*/ **) ; 
 struct adm1026_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adm1026_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct adm1026_data *data;

	data = FUNC3(dev, sizeof(struct adm1026_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(client, data);
	data->client = client;
	FUNC5(&data->update_lock);

	/* Set the VRM version */
	data->vrm = FUNC6();

	/* Initialize the ADM1026 chip */
	FUNC1(client);

	/* sysfs hooks */
	data->groups[0] = &adm1026_group;
	if (data->config1 & CFG1_AIN8_9)
		data->groups[1] = &adm1026_group_in8_9;
	else
		data->groups[1] = &adm1026_group_temp3;

	hwmon_dev = FUNC2(dev, client->name,
							   data, data->groups);
	return FUNC0(hwmon_dev);
}