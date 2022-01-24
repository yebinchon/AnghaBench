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
typedef  int u8 ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;
struct adm1025_data {int /*<<< orphan*/ ** groups; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1025_REG_CONFIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  adm1025_group ; 
 int /*<<< orphan*/  adm1025_group_in4 ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 struct device* FUNC2 (struct device*,int /*<<< orphan*/ ,struct adm1025_data*,int /*<<< orphan*/ **) ; 
 struct adm1025_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_client*,struct adm1025_data*) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct adm1025_data *data;
	u8 config;

	data = FUNC3(dev, sizeof(struct adm1025_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC4(client, data);
	data->client = client;
	FUNC6(&data->update_lock);

	/* Initialize the ADM1025 chip */
	FUNC1(client);

	/* sysfs hooks */
	data->groups[0] = &adm1025_group;
	/* Pin 11 is either in4 (+12V) or VID4 */
	config = FUNC5(client, ADM1025_REG_CONFIG);
	if (!(config & 0x20))
		data->groups[1] = &adm1025_group_in4;

	hwmon_dev = FUNC2(dev, client->name,
							   data, data->groups);
	return FUNC0(hwmon_dev);
}