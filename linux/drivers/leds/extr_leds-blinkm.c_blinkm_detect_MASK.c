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
typedef  int u8 ;
struct i2c_client {int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLM_GET_ADDR ; 
 int ENODEV ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int ret;
	int count = 99;
	u8 tmpargs[7];

	if (!FUNC3(adapter, I2C_FUNC_SMBUS_BYTE_DATA
				     | I2C_FUNC_SMBUS_WORD_DATA
				     | I2C_FUNC_SMBUS_WRITE_BYTE))
		return -ENODEV;

	/* Now, we do the remaining detection. Simple for now. */
	/* We might need more guards to protect other i2c slaves */

	/* make sure the blinkM is balanced (read/writes) */
	while (count > 0) {
		ret = FUNC1(client, BLM_GET_ADDR, NULL);
		if (ret)
			return ret;
		FUNC5(5000, 10000);
		ret = FUNC0(client, BLM_GET_ADDR, tmpargs);
		if (ret)
			return ret;
		FUNC5(5000, 10000);
		if (tmpargs[0] == 0x09)
			count = 0;
		count--;
	}

	/* Step 1: Read BlinkM address back  -  cmd_char 'a' */
	ret = FUNC1(client, BLM_GET_ADDR, NULL);
	if (ret < 0)
		return ret;
	FUNC5(20000, 30000);	/* allow a small delay */
	ret = FUNC0(client, BLM_GET_ADDR, tmpargs);
	if (ret < 0)
		return ret;

	if (tmpargs[0] != 0x09) {
		FUNC2(&client->dev, "enodev DEV ADDR = 0x%02X\n", tmpargs[0]);
		return -ENODEV;
	}

	FUNC4(info->type, "blinkm", I2C_NAME_SIZE);
	return 0;
}