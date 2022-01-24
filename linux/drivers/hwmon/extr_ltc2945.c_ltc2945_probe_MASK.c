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
 int /*<<< orphan*/  LTC2945_FAULT ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 struct device* FUNC4 (struct device*,int /*<<< orphan*/ ,struct regmap*,int /*<<< orphan*/ ) ; 
 struct regmap* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ltc2945_groups ; 
 int /*<<< orphan*/  ltc2945_regmap_config ; 
 int /*<<< orphan*/  FUNC6 (struct regmap*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct device *dev = &client->dev;
	struct device *hwmon_dev;
	struct regmap *regmap;

	regmap = FUNC5(client, &ltc2945_regmap_config);
	if (FUNC0(regmap)) {
		FUNC3(dev, "failed to allocate register map\n");
		return FUNC1(regmap);
	}

	/* Clear faults */
	FUNC6(regmap, LTC2945_FAULT, 0x00);

	hwmon_dev = FUNC4(dev, client->name,
							   regmap,
							   ltc2945_groups);
	return FUNC2(hwmon_dev);
}