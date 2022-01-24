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
struct thermal_data {int /*<<< orphan*/ ** groups; int /*<<< orphan*/  mutex; struct device* regmap; } ;
struct i2c_device_id {int driver_data; int /*<<< orphan*/  name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct thermal_data*,int /*<<< orphan*/ **) ; 
 struct thermal_data* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 struct device* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
#define  emc1402 130 
 int /*<<< orphan*/  emc1402_alarm_group ; 
 int /*<<< orphan*/  emc1402_group ; 
#define  emc1403 129 
 int /*<<< orphan*/  emc1403_group ; 
 int /*<<< orphan*/  emc1403_regmap_config ; 
#define  emc1404 128 
 int /*<<< orphan*/  emc1404_group ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct thermal_data *data;
	struct device *hwmon_dev;

	data = FUNC4(&client->dev, sizeof(struct thermal_data),
			    GFP_KERNEL);
	if (data == NULL)
		return -ENOMEM;

	data->regmap = FUNC5(client, &emc1403_regmap_config);
	if (FUNC0(data->regmap))
		return FUNC1(data->regmap);

	FUNC6(&data->mutex);

	switch (id->driver_data) {
	case emc1404:
		data->groups[2] = &emc1404_group;
		/* fall through */
	case emc1403:
		data->groups[1] = &emc1403_group;
		/* fall through */
	case emc1402:
		data->groups[0] = &emc1402_group;
	}

	if (id->driver_data == emc1402)
		data->groups[1] = &emc1402_alarm_group;

	hwmon_dev = FUNC3(&client->dev,
							   client->name, data,
							   data->groups);
	if (FUNC0(hwmon_dev))
		return FUNC1(hwmon_dev);

	FUNC2(&client->dev, "%s Thermal chip found\n", id->name);
	return 0;
}