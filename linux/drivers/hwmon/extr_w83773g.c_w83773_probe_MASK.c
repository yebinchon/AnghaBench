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
struct regmap {int dummy; } ;
struct i2c_device_id {int dummy; } ;
struct device {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  name; struct device dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  W83773_CONVERSION_RATE_REG_WRITE ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct device* FUNC4 (struct device*,int /*<<< orphan*/ ,struct regmap*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct regmap* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i2c_client*,struct regmap*) ; 
 int FUNC7 (struct regmap*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  w83773_chip_info ; 
 int /*<<< orphan*/  w83773_regmap_config ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct regmap *regmap;
	int ret;

	regmap = FUNC5(client, &w83773_regmap_config);
	if (FUNC0(regmap)) {
		FUNC3(dev, "failed to allocate register map\n");
		return FUNC1(regmap);
	}

	/* Set the conversion rate to 2 Hz */
	ret = FUNC7(regmap, W83773_CONVERSION_RATE_REG_WRITE, 0x05);
	if (ret < 0) {
		FUNC3(&client->dev, "error writing config rate register\n");
		return ret;
	}

	FUNC6(client, regmap);

	hwmon_dev = FUNC4(dev,
							 client->name,
							 regmap,
							 &w83773_chip_info,
							 NULL);
	return FUNC2(hwmon_dev);
}