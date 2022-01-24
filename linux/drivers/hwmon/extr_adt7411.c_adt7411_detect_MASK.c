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
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ADT7411_DEVICE_ID ; 
 int ADT7411_MANUFACTURER_ID ; 
 int /*<<< orphan*/  ADT7411_REG_DEVICE_ID ; 
 int /*<<< orphan*/  ADT7411_REG_MANUFACTURER_ID ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			  struct i2c_board_info *info)
{
	int val;

	if (!FUNC1(client->adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	val = FUNC2(client, ADT7411_REG_MANUFACTURER_ID);
	if (val < 0 || val != ADT7411_MANUFACTURER_ID) {
		FUNC0(&client->dev,
			"Wrong manufacturer ID. Got %d, expected %d\n",
			val, ADT7411_MANUFACTURER_ID);
		return -ENODEV;
	}

	val = FUNC2(client, ADT7411_REG_DEVICE_ID);
	if (val < 0 || val != ADT7411_DEVICE_ID) {
		FUNC0(&client->dev,
			"Wrong device ID. Got %d, expected %d\n",
			val, ADT7411_DEVICE_ID);
		return -ENODEV;
	}

	FUNC3(info->type, "adt7411", I2C_NAME_SIZE);

	return 0;
}