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
struct tmp401_data {size_t kind; int /*<<< orphan*/ ** groups; int /*<<< orphan*/  update_lock; struct i2c_client* client; } ;
struct i2c_device_id {size_t driver_data; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char const* const) ; 
 struct device* FUNC3 (struct device*,int /*<<< orphan*/ ,struct tmp401_data*,int /*<<< orphan*/ **) ; 
 struct tmp401_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tmp401_group ; 
 int FUNC6 (struct tmp401_data*,struct i2c_client*) ; 
 size_t tmp411 ; 
 int /*<<< orphan*/  tmp411_group ; 
 size_t tmp432 ; 
 int /*<<< orphan*/  tmp432_group ; 
 size_t tmp461 ; 
 int /*<<< orphan*/  tmp461_group ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	static const char * const names[] = {
		"TMP401", "TMP411", "TMP431", "TMP432", "TMP435", "TMP461"
	};
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct tmp401_data *data;
	int groups = 0, status;

	data = FUNC4(dev, sizeof(struct tmp401_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->client = client;
	FUNC5(&data->update_lock);
	data->kind = id->driver_data;

	/* Initialize the TMP401 chip */
	status = FUNC6(data, client);
	if (status < 0)
		return status;

	/* Register sysfs hooks */
	data->groups[groups++] = &tmp401_group;

	/* Register additional tmp411 sysfs hooks */
	if (data->kind == tmp411)
		data->groups[groups++] = &tmp411_group;

	/* Register additional tmp432 sysfs hooks */
	if (data->kind == tmp432)
		data->groups[groups++] = &tmp432_group;

	if (data->kind == tmp461)
		data->groups[groups++] = &tmp461_group;

	hwmon_dev = FUNC3(dev, client->name,
							   data, data->groups);
	if (FUNC0(hwmon_dev))
		return FUNC1(hwmon_dev);

	FUNC2(dev, "Detected TI %s chip\n", names[data->kind]);

	return 0;
}