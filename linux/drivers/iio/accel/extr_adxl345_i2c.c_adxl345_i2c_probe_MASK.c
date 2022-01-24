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
struct i2c_device_id {int /*<<< orphan*/  name; int /*<<< orphan*/  driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  adxl345_i2c_regmap_config ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct regmap* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct regmap *regmap;

	if (!id)
		return -ENODEV;

	regmap = FUNC4(client, &adxl345_i2c_regmap_config);
	if (FUNC0(regmap)) {
		FUNC3(&client->dev, "Error initializing i2c regmap: %ld\n",
			FUNC1(regmap));
		return FUNC1(regmap);
	}

	return FUNC2(&client->dev, regmap, id->driver_data,
				  id->name);
}