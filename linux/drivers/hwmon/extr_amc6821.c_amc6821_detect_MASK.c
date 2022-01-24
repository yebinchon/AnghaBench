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
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int AMC6821_REG_COMP_ID ; 
 int AMC6821_REG_DEV_ID ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(
		struct i2c_client *client,
		struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int address = client->addr;
	int dev_id, comp_id;

	FUNC0(&adapter->dev, "amc6821_detect called.\n");

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC0(&adapter->dev,
			"amc6821: I2C bus doesn't support byte mode, "
			"skipping.\n");
		return -ENODEV;
	}

	dev_id = FUNC3(client, AMC6821_REG_DEV_ID);
	comp_id = FUNC3(client, AMC6821_REG_COMP_ID);
	if (dev_id != 0x21 || comp_id != 0x49) {
		FUNC0(&adapter->dev,
			"amc6821: detection failed at 0x%02x.\n",
			address);
		return -ENODEV;
	}

	/*
	 * Bit 7 of the address register is ignored, so we can check the
	 * ID registers again
	 */
	dev_id = FUNC3(client, 0x80 | AMC6821_REG_DEV_ID);
	comp_id = FUNC3(client, 0x80 | AMC6821_REG_COMP_ID);
	if (dev_id != 0x21 || comp_id != 0x49) {
		FUNC0(&adapter->dev,
			"amc6821: detection failed at 0x%02x.\n",
			address);
		return -ENODEV;
	}

	FUNC1(&adapter->dev, "amc6821: chip found at 0x%02x.\n", address);
	FUNC4(info->type, "amc6821", I2C_NAME_SIZE);

	return 0;
}