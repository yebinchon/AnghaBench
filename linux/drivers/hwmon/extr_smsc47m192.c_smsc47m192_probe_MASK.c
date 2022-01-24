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
struct smsc47m192_data {int /*<<< orphan*/ ** groups; int /*<<< orphan*/  update_lock; int /*<<< orphan*/  vrm; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  SMSC47M192_REG_CONFIG ; 
 struct device* FUNC1 (struct device*,int /*<<< orphan*/ ,struct smsc47m192_data*,int /*<<< orphan*/ **) ; 
 struct smsc47m192_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smsc47m192_group ; 
 int /*<<< orphan*/  smsc47m192_group_in4 ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct smsc47m192_data *data;
	int config;

	data = FUNC2(dev, sizeof(struct smsc47m192_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	data->vrm = FUNC6();
	FUNC4(&data->update_lock);

	/* Initialize the SMSC47M192 chip */
	FUNC5(client);

	/* sysfs hooks */
	data->groups[0] = &smsc47m192_group;
	/* Pin 110 is either in4 (+12V) or VID4 */
	config = FUNC3(client, SMSC47M192_REG_CONFIG);
	if (!(config & 0x20))
		data->groups[1] = &smsc47m192_group_in4;

	hwmon_dev = FUNC1(dev, client->name,
							   data, data->groups);
	return FUNC0(hwmon_dev);
}