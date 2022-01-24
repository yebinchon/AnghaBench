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
struct i2c_client {struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1029_REG_CHIP_ID ; 
 int /*<<< orphan*/  ADM1029_REG_MAN_ID ; 
 int /*<<< orphan*/  ADM1029_REG_NB_FAN_SUPPORT ; 
 int /*<<< orphan*/  ADM1029_REG_TEMP_DEVICES_INSTALLED ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	u8 man_id, chip_id, temp_devices_installed, nb_fan_support;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/*
	 * ADM1029 doesn't have CHIP ID, check just MAN ID
	 * For better detection we check also ADM1029_TEMP_DEVICES_INSTALLED,
	 * ADM1029_REG_NB_FAN_SUPPORT and compare it with possible values
	 * documented
	 */

	man_id = FUNC1(client, ADM1029_REG_MAN_ID);
	chip_id = FUNC1(client, ADM1029_REG_CHIP_ID);
	temp_devices_installed = FUNC1(client,
					ADM1029_REG_TEMP_DEVICES_INSTALLED);
	nb_fan_support = FUNC1(client,
						  ADM1029_REG_NB_FAN_SUPPORT);
	/* 0x41 is Analog Devices */
	if (man_id != 0x41 || (temp_devices_installed & 0xf9) != 0x01 ||
	    nb_fan_support != 0x03)
		return -ENODEV;

	if ((chip_id & 0xF0) != 0x00) {
		/*
		 * There are no "official" CHIP ID, so actually
		 * we use Major/Minor revision for that
		 */
		FUNC2("Unknown major revision %x, please let us know\n",
			chip_id);
		return -ENODEV;
	}

	FUNC3(info->type, "adm1029", I2C_NAME_SIZE);

	return 0;
}