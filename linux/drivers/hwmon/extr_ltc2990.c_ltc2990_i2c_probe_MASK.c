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
struct ltc2990_data {int* mode; struct i2c_client* i2c; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  LTC2990_CONTROL ; 
 int LTC2990_MODE0_MASK ; 
 int LTC2990_MODE0_SHIFT ; 
 int LTC2990_MODE1_MASK ; 
 int LTC2990_MODE1_SHIFT ; 
 int /*<<< orphan*/  LTC2990_TRIGGER ; 
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int*,int) ; 
 struct device* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ltc2990_data*,int /*<<< orphan*/ ) ; 
 struct ltc2990_data* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ltc2990_groups ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct i2c_client *i2c,
			     const struct i2c_device_id *id)
{
	int ret;
	struct device *hwmon_dev;
	struct ltc2990_data *data;

	if (!FUNC6(i2c->adapter, I2C_FUNC_SMBUS_BYTE_DATA |
				     I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	data = FUNC5(&i2c->dev, sizeof(struct ltc2990_data), GFP_KERNEL);
	if (FUNC9(!data))
		return -ENOMEM;

	data->i2c = i2c;

	if (FUNC2(&i2c->dev)) {
		ret = FUNC3(&i2c->dev,
						     "lltc,meas-mode",
						     data->mode, 2);
		if (ret < 0)
			return ret;

		if (data->mode[0] & ~LTC2990_MODE0_MASK ||
		    data->mode[1] & ~LTC2990_MODE1_MASK)
			return -EINVAL;
	} else {
		ret = FUNC7(i2c, LTC2990_CONTROL);
		if (ret < 0)
			return ret;

		data->mode[0] = ret >> LTC2990_MODE0_SHIFT & LTC2990_MODE0_MASK;
		data->mode[1] = ret >> LTC2990_MODE1_SHIFT & LTC2990_MODE1_MASK;
	}

	/* Setup continuous mode */
	ret = FUNC8(i2c, LTC2990_CONTROL,
					data->mode[0] << LTC2990_MODE0_SHIFT |
					data->mode[1] << LTC2990_MODE1_SHIFT);
	if (ret < 0) {
		FUNC1(&i2c->dev, "Error: Failed to set control mode.\n");
		return ret;
	}
	/* Trigger once to start continuous conversion */
	ret = FUNC8(i2c, LTC2990_TRIGGER, 1);
	if (ret < 0) {
		FUNC1(&i2c->dev, "Error: Failed to start acquisition.\n");
		return ret;
	}

	hwmon_dev = FUNC4(&i2c->dev,
							   i2c->name,
							   data,
							   ltc2990_groups);

	return FUNC0(hwmon_dev);
}