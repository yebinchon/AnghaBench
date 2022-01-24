#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pmbus_platform_data {int /*<<< orphan*/  flags; } ;
struct pmbus_driver_info {scalar_t__* groups; } ;
struct TYPE_4__ {int /*<<< orphan*/  attrs; } ;
struct pmbus_data {TYPE_1__ group; int /*<<< orphan*/  hwmon_dev; TYPE_1__** groups; int /*<<< orphan*/  num_attributes; struct pmbus_driver_info* info; int /*<<< orphan*/  flags; struct device* dev; int /*<<< orphan*/  update_lock; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 struct pmbus_platform_data* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 TYPE_1__** FUNC5 (struct device*,size_t,int,int /*<<< orphan*/ ) ; 
 struct pmbus_data* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,struct pmbus_data*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct pmbus_data*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__**,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct i2c_client*,struct pmbus_data*) ; 
 int FUNC15 (struct i2c_client*,struct pmbus_data*,struct pmbus_driver_info*) ; 
 int FUNC16 (struct i2c_client*,struct pmbus_data*) ; 
 int FUNC17 (struct pmbus_data*) ; 

int FUNC18(struct i2c_client *client, const struct i2c_device_id *id,
		   struct pmbus_driver_info *info)
{
	struct device *dev = &client->dev;
	const struct pmbus_platform_data *pdata = FUNC3(dev);
	struct pmbus_data *data;
	size_t groups_num = 0;
	int ret;

	if (!info)
		return -ENODEV;

	if (!FUNC9(client->adapter, I2C_FUNC_SMBUS_WRITE_BYTE
				     | I2C_FUNC_SMBUS_BYTE_DATA
				     | I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	data = FUNC6(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	if (info->groups)
		while (info->groups[groups_num])
			groups_num++;

	data->groups = FUNC5(dev, groups_num + 2, sizeof(void *),
				    GFP_KERNEL);
	if (!data->groups)
		return -ENOMEM;

	FUNC10(client, data);
	FUNC13(&data->update_lock);
	data->dev = dev;

	if (pdata)
		data->flags = pdata->flags;
	data->info = info;

	ret = FUNC15(client, data, info);
	if (ret < 0)
		return ret;

	ret = FUNC14(client, data);
	if (ret)
		goto out_kfree;

	/*
	 * If there are no attributes, something is wrong.
	 * Bail out instead of trying to register nothing.
	 */
	if (!data->num_attributes) {
		FUNC2(dev, "No attributes found\n");
		ret = -ENODEV;
		goto out_kfree;
	}

	data->groups[0] = &data->group;
	FUNC12(data->groups + 1, info->groups, sizeof(void *) * groups_num);
	data->hwmon_dev = FUNC7(dev, client->name,
							    data, data->groups);
	if (FUNC0(data->hwmon_dev)) {
		ret = FUNC1(data->hwmon_dev);
		FUNC2(dev, "Failed to register hwmon device\n");
		goto out_kfree;
	}

	ret = FUNC17(data);
	if (ret)
		goto out_unregister;

	ret = FUNC16(client, data);
	if (ret)
		FUNC4(dev, "Failed to register debugfs\n");

	return 0;

out_unregister:
	FUNC8(data->hwmon_dev);
out_kfree:
	FUNC11(data->group.attrs);
	return ret;
}