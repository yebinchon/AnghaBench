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
typedef  int u32 ;
struct tmp108 {int orig_config; int /*<<< orphan*/  ready_time; int /*<<< orphan*/  regmap; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; int /*<<< orphan*/  adapter; struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int TMP108_CONF_MODE_MASK ; 
 int TMP108_CONF_TM ; 
 int /*<<< orphan*/  TMP108_CONVERSION_TIME_MS ; 
 int TMP108_MODE_CONTINUOUS ; 
 int TMP108_MODE_SHUTDOWN ; 
 int /*<<< orphan*/  TMP108_REG_CONF ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct tmp108*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,struct tmp108*) ; 
 struct device* FUNC6 (struct device*,int /*<<< orphan*/ ,struct tmp108*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct tmp108* FUNC7 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tmp108_chip_info ; 
 int /*<<< orphan*/  tmp108_regmap_config ; 
 int /*<<< orphan*/  tmp108_restore_config ; 

__attribute__((used)) static int FUNC13(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct tmp108 *tmp108;
	int err;
	u32 config;

	if (!FUNC9(client->adapter,
				     I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC3(dev,
			"adapter doesn't support SMBus word transactions\n");
		return -ENODEV;
	}

	tmp108 = FUNC7(dev, sizeof(*tmp108), GFP_KERNEL);
	if (!tmp108)
		return -ENOMEM;

	FUNC4(dev, tmp108);

	tmp108->regmap = FUNC8(client, &tmp108_regmap_config);
	if (FUNC0(tmp108->regmap)) {
		err = FUNC1(tmp108->regmap);
		FUNC3(dev, "regmap init failed: %d", err);
		return err;
	}

	err = FUNC11(tmp108->regmap, TMP108_REG_CONF, &config);
	if (err < 0) {
		FUNC3(dev, "error reading config register: %d", err);
		return err;
	}
	tmp108->orig_config = config;

	/* Only continuous mode is supported. */
	config &= ~TMP108_CONF_MODE_MASK;
	config |= TMP108_MODE_CONTINUOUS;

	/* Only comparator mode is supported. */
	config &= ~TMP108_CONF_TM;

	err = FUNC12(tmp108->regmap, TMP108_REG_CONF, config);
	if (err < 0) {
		FUNC3(dev, "error writing config register: %d", err);
		return err;
	}

	tmp108->ready_time = jiffies;
	if ((tmp108->orig_config & TMP108_CONF_MODE_MASK) ==
	    TMP108_MODE_SHUTDOWN)
		tmp108->ready_time +=
			FUNC10(TMP108_CONVERSION_TIME_MS);

	err = FUNC5(dev, tmp108_restore_config, tmp108);
	if (err) {
		FUNC3(dev, "add action or reset failed: %d", err);
		return err;
	}

	hwmon_dev = FUNC6(dev, client->name,
							 tmp108,
							 &tmp108_chip_info,
							 NULL);
	return FUNC2(hwmon_dev);
}