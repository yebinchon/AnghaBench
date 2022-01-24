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
struct i2c_device_id {int driver_data; } ;
struct device {scalar_t__ of_node; } ;
struct i2c_client {int /*<<< orphan*/  name; struct i2c_adapter* adapter; struct device dev; } ;
struct i2c_adapter {int dummy; } ;
struct attribute_group {int dummy; } ;
struct ad7418_data {int type; int adc_max; struct i2c_client* client; int /*<<< orphan*/  lock; } ;
typedef  enum chips { ____Placeholder_chips } chips ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int FUNC0 (struct device*) ; 
#define  ad7416 130 
 struct attribute_group** ad7416_groups ; 
#define  ad7417 129 
 struct attribute_group** ad7417_groups ; 
#define  ad7418 128 
 struct attribute_group** ad7418_groups ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (struct device*,int /*<<< orphan*/ ,struct ad7418_data*,struct attribute_group const**) ; 
 struct ad7418_data* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct ad7418_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct device*) ; 

__attribute__((used)) static int FUNC9(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct i2c_adapter *adapter = client->adapter;
	struct ad7418_data *data;
	struct device *hwmon_dev;
	const struct attribute_group **attr_groups = NULL;

	if (!FUNC5(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
					I2C_FUNC_SMBUS_WORD_DATA))
		return -EOPNOTSUPP;

	data = FUNC4(dev, sizeof(struct ad7418_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC6(client, data);

	FUNC7(&data->lock);
	data->client = client;
	if (dev->of_node)
		data->type = (enum chips)FUNC8(dev);
	else
		data->type = id->driver_data;

	switch (data->type) {
	case ad7416:
		data->adc_max = 0;
		attr_groups = ad7416_groups;
		break;

	case ad7417:
		data->adc_max = 4;
		attr_groups = ad7417_groups;
		break;

	case ad7418:
		data->adc_max = 1;
		attr_groups = ad7418_groups;
		break;
	}

	FUNC2(dev, "%s chip found\n", client->name);

	/* Initialize the AD7418 chip */
	FUNC1(client);

	hwmon_dev = FUNC3(dev,
							   client->name,
							   data, attr_groups);
	return FUNC0(hwmon_dev);
}