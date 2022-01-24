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
 int ENODEV ; 
 int /*<<< orphan*/  GL518_REG_CHIP_ID ; 
 int /*<<< orphan*/  GL518_REG_CONF ; 
 int /*<<< orphan*/  GL518_REG_REVISION ; 
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client, struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int rev;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
				     I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	/* Now, we do the remaining detection. */
	if ((FUNC0(client, GL518_REG_CHIP_ID) != 0x80)
	 || (FUNC0(client, GL518_REG_CONF) & 0x80))
		return -ENODEV;

	/* Determine the chip type. */
	rev = FUNC0(client, GL518_REG_REVISION);
	if (rev != 0x00 && rev != 0x80)
		return -ENODEV;

	FUNC2(info->type, "gl518sm", I2C_NAME_SIZE);

	return 0;
}