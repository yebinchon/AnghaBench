#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct regmap {int dummy; } ;
struct inv_mpu6050_state {int chip_type; TYPE_3__* muxc; } ;
struct i2c_device_id {char* name; scalar_t__ driver_data; } ;
struct TYPE_10__ {scalar_t__ of_node; } ;
struct i2c_client {char* name; TYPE_1__ dev; int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; } ;
typedef  enum inv_devices { ____Placeholder_inv_devices } inv_devices ;
struct TYPE_11__ {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOSYS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_I2C_BLOCK ; 
 int I2C_MUX_GATE ; 
 int I2C_MUX_LOCKED ; 
#define  INV_ICM20602 129 
#define  INV_ICM20608 128 
 scalar_t__ FUNC1 (struct regmap*) ; 
 int FUNC2 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct regmap* FUNC5 (struct i2c_client*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 struct inv_mpu6050_state* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inv_mpu6050_deselect_bypass ; 
 int /*<<< orphan*/  inv_mpu6050_select_bypass ; 
 int FUNC11 (struct i2c_client*) ; 
 int FUNC12 (struct regmap*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int) ; 
 char* FUNC13 (TYPE_1__*,int*) ; 
 int /*<<< orphan*/  inv_mpu_regmap_config ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(struct i2c_client *client,
			 const struct i2c_device_id *id)
{
	struct inv_mpu6050_state *st;
	int result;
	enum inv_devices chip_type;
	struct regmap *regmap;
	const char *name;

	if (!FUNC6(client->adapter,
				     I2C_FUNC_SMBUS_I2C_BLOCK))
		return -EOPNOTSUPP;

	if (client->dev.of_node) {
		chip_type = (enum inv_devices)
			FUNC14(&client->dev);
		name = client->name;
	} else if (id) {
		chip_type = (enum inv_devices)
			id->driver_data;
		name = id->name;
	} else if (FUNC0(&client->dev)) {
		name = FUNC13(&client->dev, &chip_type);
		if (!name)
			return -ENODEV;
	} else {
		return -ENOSYS;
	}

	regmap = FUNC5(client, &inv_mpu_regmap_config);
	if (FUNC1(regmap)) {
		FUNC3(&client->dev, "Failed to register i2c regmap %d\n",
			(int)FUNC2(regmap));
		return FUNC2(regmap);
	}

	result = FUNC12(regmap, client->irq, name,
				    NULL, chip_type);
	if (result < 0)
		return result;

	st = FUNC10(FUNC4(&client->dev));
	switch (st->chip_type) {
	case INV_ICM20608:
	case INV_ICM20602:
		/* no i2c auxiliary bus on the chip */
		break;
	default:
		/* declare i2c auxiliary bus */
		st->muxc = FUNC8(client->adapter, &client->dev,
					 1, 0, I2C_MUX_LOCKED | I2C_MUX_GATE,
					 inv_mpu6050_select_bypass,
					 inv_mpu6050_deselect_bypass);
		if (!st->muxc)
			return -ENOMEM;
		st->muxc->priv = FUNC4(&client->dev);
		result = FUNC7(st->muxc, 0, 0, 0);
		if (result)
			return result;
		result = FUNC11(client);
		if (result)
			goto out_del_mux;
		break;
	}

	return 0;

out_del_mux:
	FUNC9(st->muxc);
	return result;
}