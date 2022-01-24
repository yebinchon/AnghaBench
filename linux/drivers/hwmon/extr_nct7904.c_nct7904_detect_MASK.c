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
 int /*<<< orphan*/  BANK_SEL_REG ; 
 int /*<<< orphan*/  CHIP_ID_REG ; 
 int /*<<< orphan*/  DEVICE_ID_REG ; 
 int ENODEV ; 
 int I2C_FUNC_SMBUS_READ_BYTE ; 
 int I2C_FUNC_SMBUS_WRITE_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int NCT7904_ID ; 
 int NUVOTON_ID ; 
 int /*<<< orphan*/  VENDOR_ID_REG ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;

	if (!FUNC0(adapter,
				     I2C_FUNC_SMBUS_READ_BYTE |
				     I2C_FUNC_SMBUS_WRITE_BYTE_DATA))
		return -ENODEV;

	/* Determine the chip type. */
	if (FUNC1(client, VENDOR_ID_REG) != NUVOTON_ID ||
	    FUNC1(client, CHIP_ID_REG) != NCT7904_ID ||
	    (FUNC1(client, DEVICE_ID_REG) & 0xf0) != 0x50 ||
	    (FUNC1(client, BANK_SEL_REG) & 0xf8) != 0x00)
		return -ENODEV;

	FUNC2(info->type, "nct7904", I2C_NAME_SIZE);

	return 0;
}