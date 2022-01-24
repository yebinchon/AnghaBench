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
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASB100_REG_BANK ; 
 int /*<<< orphan*/  ASB100_REG_CHIPMAN ; 
 int /*<<< orphan*/  ASB100_REG_WCHIPID ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			 struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int val1, val2;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC3("detect failed, smbus byte data not supported!\n");
		return -ENODEV;
	}

	val1 = FUNC1(client, ASB100_REG_BANK);
	val2 = FUNC1(client, ASB100_REG_CHIPMAN);

	/* If we're in bank 0 */
	if ((!(val1 & 0x07)) &&
			/* Check for ASB100 ID (low byte) */
			(((!(val1 & 0x80)) && (val2 != 0x94)) ||
			/* Check for ASB100 ID (high byte ) */
			((val1 & 0x80) && (val2 != 0x06)))) {
		FUNC3("detect failed, bad chip id 0x%02x!\n", val2);
		return -ENODEV;
	}

	/* Put it now into bank 0 and Vendor ID High Byte */
	FUNC2(client, ASB100_REG_BANK,
		(FUNC1(client, ASB100_REG_BANK) & 0x78)
		| 0x80);

	/* Determine the chip type. */
	val1 = FUNC1(client, ASB100_REG_WCHIPID);
	val2 = FUNC1(client, ASB100_REG_CHIPMAN);

	if (val1 != 0x31 || val2 != 0x06)
		return -ENODEV;

	FUNC4(info->type, "asb100", I2C_NAME_SIZE);

	return 0;
}