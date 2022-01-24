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
struct i2c_client {unsigned short addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  W83793_REG_BANKSEL ; 
 int /*<<< orphan*/  W83793_REG_CHIPID ; 
 int /*<<< orphan*/  W83793_REG_I2C_ADDR ; 
 int /*<<< orphan*/  W83793_REG_VENDORID ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 unsigned short FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			 struct i2c_board_info *info)
{
	u8 tmp, bank, chip_id;
	struct i2c_adapter *adapter = client->adapter;
	unsigned short address = client->addr;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	bank = FUNC1(client, W83793_REG_BANKSEL);

	tmp = bank & 0x80 ? 0x5c : 0xa3;
	/* Check Winbond vendor ID */
	if (tmp != FUNC1(client, W83793_REG_VENDORID)) {
		FUNC2("w83793: Detection failed at check vendor id\n");
		return -ENODEV;
	}

	/*
	 * If Winbond chip, address of chip and W83793_REG_I2C_ADDR
	 * should match
	 */
	if ((bank & 0x07) == 0
	 && FUNC1(client, W83793_REG_I2C_ADDR) !=
	    (address << 1)) {
		FUNC2("w83793: Detection failed at check i2c addr\n");
		return -ENODEV;
	}

	/* Determine the chip type now */
	chip_id = FUNC1(client, W83793_REG_CHIPID);
	if (chip_id != 0x7b)
		return -ENODEV;

	FUNC3(info->type, "w83793", I2C_NAME_SIZE);

	return 0;
}