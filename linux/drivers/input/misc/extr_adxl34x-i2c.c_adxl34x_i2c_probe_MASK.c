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
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  adapter; int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct adxl34x {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_READ_I2C_BLOCK ; 
 scalar_t__ FUNC0 (struct adxl34x*) ; 
 int FUNC1 (struct adxl34x*) ; 
 int /*<<< orphan*/  adxl34x_i2c_bops ; 
 struct adxl34x* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adxl34x_smbus_bops ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_client*,struct adxl34x*) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
				       const struct i2c_device_id *id)
{
	struct adxl34x *ac;
	int error;

	error = FUNC4(client->adapter,
			I2C_FUNC_SMBUS_BYTE_DATA);
	if (!error) {
		FUNC3(&client->dev, "SMBUS Byte Data not Supported\n");
		return -EIO;
	}

	ac = FUNC2(&client->dev, client->irq, false,
			   FUNC4(client->adapter,
						   I2C_FUNC_SMBUS_READ_I2C_BLOCK) ?
				&adxl34x_smbus_bops : &adxl34x_i2c_bops);
	if (FUNC0(ac))
		return FUNC1(ac);

	FUNC5(client, ac);

	return 0;
}