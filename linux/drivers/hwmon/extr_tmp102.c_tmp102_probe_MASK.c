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
struct tmp102 {unsigned int config_orig; scalar_t__ ready_time; struct device* regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONVERSION_TIME_MS ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 unsigned int TMP102_CONFIG_CLEAR ; 
 unsigned int TMP102_CONFIG_SET ; 
 unsigned int TMP102_CONFREG_MASK ; 
 unsigned int TMP102_CONF_R0 ; 
 unsigned int TMP102_CONF_R1 ; 
 int /*<<< orphan*/  TMP102_CONF_REG ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,struct tmp102*) ; 
 struct device* FUNC6 (struct device*,int /*<<< orphan*/ ,struct tmp102*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tmp102* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct device* FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_client*,struct tmp102*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct device*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC13 (struct device*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  tmp102_chip_info ; 
 int /*<<< orphan*/  tmp102_regmap_config ; 
 int /*<<< orphan*/  tmp102_restore_config ; 

__attribute__((used)) static int FUNC14(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct tmp102 *tmp102;
	unsigned int regval;
	int err;

	if (!FUNC9(client->adapter,
				     I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC3(dev,
			"adapter doesn't support SMBus word transactions\n");
		return -ENODEV;
	}

	tmp102 = FUNC7(dev, sizeof(*tmp102), GFP_KERNEL);
	if (!tmp102)
		return -ENOMEM;

	FUNC10(client, tmp102);

	tmp102->regmap = FUNC8(client, &tmp102_regmap_config);
	if (FUNC0(tmp102->regmap))
		return FUNC1(tmp102->regmap);

	err = FUNC12(tmp102->regmap, TMP102_CONF_REG, &regval);
	if (err < 0) {
		FUNC3(dev, "error reading config register\n");
		return err;
	}

	if ((regval & ~TMP102_CONFREG_MASK) !=
	    (TMP102_CONF_R0 | TMP102_CONF_R1)) {
		FUNC3(dev, "unexpected config register value\n");
		return -ENODEV;
	}

	tmp102->config_orig = regval;

	err = FUNC5(dev, tmp102_restore_config, tmp102);
	if (err)
		return err;

	regval &= ~TMP102_CONFIG_CLEAR;
	regval |= TMP102_CONFIG_SET;

	err = FUNC13(tmp102->regmap, TMP102_CONF_REG, regval);
	if (err < 0) {
		FUNC3(dev, "error writing config register\n");
		return err;
	}

	/*
	 * Mark that we are not ready with data until the first
	 * conversion is complete
	 */
	tmp102->ready_time = jiffies + FUNC11(CONVERSION_TIME_MS);

	hwmon_dev = FUNC6(dev, client->name,
							 tmp102,
							 &tmp102_chip_info,
							 NULL);
	if (FUNC0(hwmon_dev)) {
		FUNC2(dev, "unable to register hwmon device\n");
		return FUNC1(hwmon_dev);
	}
	FUNC4(dev, "initialized\n");

	return 0;
}