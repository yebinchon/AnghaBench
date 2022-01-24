#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct mpu3050 {TYPE_1__* i2cmux; } ;
struct i2c_device_id {char* name; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {struct mpu3050* priv; } ;

/* Variables and functions */
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_I2C_BLOCK ; 
 int I2C_MUX_GATE ; 
 int I2C_MUX_LOCKED ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct regmap* FUNC4 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mpu3050* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,struct regmap*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  mpu3050_i2c_bypass_deselect ; 
 int /*<<< orphan*/  mpu3050_i2c_bypass_select ; 
 int /*<<< orphan*/  mpu3050_i2c_regmap_config ; 

__attribute__((used)) static int FUNC10(struct i2c_client *client,
			     const struct i2c_device_id *id)
{
	struct regmap *regmap;
	const char *name;
	struct mpu3050 *mpu3050;
	int ret;

	if (!FUNC5(client->adapter,
				     I2C_FUNC_SMBUS_I2C_BLOCK))
		return -EOPNOTSUPP;

	if (id)
		name = id->name;
	else
		return -ENODEV;

	regmap = FUNC4(client, &mpu3050_i2c_regmap_config);
	if (FUNC0(regmap)) {
		FUNC2(&client->dev, "Failed to register i2c regmap %d\n",
			(int)FUNC1(regmap));
		return FUNC1(regmap);
	}

	ret = FUNC9(&client->dev, regmap, client->irq, name);
	if (ret)
		return ret;

	/* The main driver is up, now register the I2C mux */
	mpu3050 = FUNC8(FUNC3(&client->dev));
	mpu3050->i2cmux = FUNC7(client->adapter, &client->dev,
					1, 0, I2C_MUX_LOCKED | I2C_MUX_GATE,
					mpu3050_i2c_bypass_select,
					mpu3050_i2c_bypass_deselect);
	/* Just fail the mux, there is no point in killing the driver */
	if (!mpu3050->i2cmux)
		FUNC2(&client->dev, "failed to allocate I2C mux\n");
	else {
		mpu3050->i2cmux->priv = mpu3050;
		/* Ignore failure, not critical */
		FUNC6(mpu3050->i2cmux, 0, 0, 0);
	}

	return 0;
}