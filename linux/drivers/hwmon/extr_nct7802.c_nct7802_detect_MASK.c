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
struct i2c_client {int dummy; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  REG_BANK ; 
 int /*<<< orphan*/  REG_CHIP_ID ; 
 int /*<<< orphan*/  REG_TEMP_LSB ; 
 int /*<<< orphan*/  REG_TEMP_PECI_LSB ; 
 int /*<<< orphan*/  REG_VENDOR_ID ; 
 int /*<<< orphan*/  REG_VERSION_ID ; 
 int /*<<< orphan*/  REG_VOLTAGE_LOW ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client,
			  struct i2c_board_info *info)
{
	int reg;

	/*
	 * Chip identification registers are only available in bank 0,
	 * so only attempt chip detection if bank 0 is selected
	 */
	reg = FUNC0(client, REG_BANK);
	if (reg != 0x00)
		return -ENODEV;

	reg = FUNC0(client, REG_VENDOR_ID);
	if (reg != 0x50)
		return -ENODEV;

	reg = FUNC0(client, REG_CHIP_ID);
	if (reg != 0xc3)
		return -ENODEV;

	reg = FUNC0(client, REG_VERSION_ID);
	if (reg < 0 || (reg & 0xf0) != 0x20)
		return -ENODEV;

	/* Also validate lower bits of voltage and temperature registers */
	reg = FUNC0(client, REG_TEMP_LSB);
	if (reg < 0 || (reg & 0x1f))
		return -ENODEV;

	reg = FUNC0(client, REG_TEMP_PECI_LSB);
	if (reg < 0 || (reg & 0x3f))
		return -ENODEV;

	reg = FUNC0(client, REG_VOLTAGE_LOW);
	if (reg < 0 || (reg & 0x3f))
		return -ENODEV;

	FUNC1(info->type, "nct7802", I2C_NAME_SIZE);
	return 0;
}