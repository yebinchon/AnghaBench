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
struct i2c_client {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD7879_DEVID ; 
 int /*<<< orphan*/  BUS_I2C ; 
 int EIO ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_WORD_DATA ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  ad7879_i2c_regmap_config ; 
 int FUNC2 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 struct regmap* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
				      const struct i2c_device_id *id)
{
	struct regmap *regmap;

	if (!FUNC5(client->adapter,
				     I2C_FUNC_SMBUS_WORD_DATA)) {
		FUNC3(&client->dev, "SMBUS Word Data not Supported\n");
		return -EIO;
	}

	regmap = FUNC4(client, &ad7879_i2c_regmap_config);
	if (FUNC0(regmap))
		return FUNC1(regmap);

	return FUNC2(&client->dev, regmap, client->irq,
			    BUS_I2C, AD7879_DEVID);
}