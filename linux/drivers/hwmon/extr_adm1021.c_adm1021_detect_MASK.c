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
struct i2c_client {int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1021_REG_CONFIG_R ; 
 int /*<<< orphan*/  ADM1021_REG_CONV_RATE_R ; 
 int /*<<< orphan*/  ADM1021_REG_DEV_ID ; 
 int /*<<< orphan*/  ADM1021_REG_MAN_ID ; 
 int /*<<< orphan*/  ADM1021_REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct i2c_client *client,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	const char *type_name;
	int conv_rate, status, config, man_id, dev_id;

	if (!FUNC4(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC6("detect failed, smbus byte data not supported!\n");
		return -ENODEV;
	}

	status = FUNC5(client, ADM1021_REG_STATUS);
	conv_rate = FUNC5(client,
					     ADM1021_REG_CONV_RATE_R);
	config = FUNC5(client, ADM1021_REG_CONFIG_R);

	/* Check unused bits */
	if ((status & 0x03) || (config & 0x3F) || (conv_rate & 0xF8)) {
		FUNC6("detect failed, chip not detected!\n");
		return -ENODEV;
	}

	/* Determine the chip type. */
	man_id = FUNC5(client, ADM1021_REG_MAN_ID);
	dev_id = FUNC5(client, ADM1021_REG_DEV_ID);

	if (man_id < 0 || dev_id < 0)
		return -ENODEV;

	if (man_id == 0x4d && dev_id == 0x01)
		type_name = "max1617a";
	else if (man_id == 0x41) {
		if ((dev_id & 0xF0) == 0x30)
			type_name = "adm1023";
		else if ((dev_id & 0xF0) == 0x00)
			type_name = "adm1021";
		else
			return -ENODEV;
	} else if (man_id == 0x49)
		type_name = "thmc10";
	else if (man_id == 0x23)
		type_name = "gl523sm";
	else if (man_id == 0x54)
		type_name = "mc1066";
	else {
		int lte, rte, lhi, rhi, llo, rlo;

		/* extra checks for LM84 and MAX1617 to avoid misdetections */

		llo = FUNC5(client, FUNC1(0));
		rlo = FUNC5(client, FUNC1(1));

		/* fail if any of the additional register reads failed */
		if (llo < 0 || rlo < 0)
			return -ENODEV;

		lte = FUNC5(client, FUNC0(0));
		rte = FUNC5(client, FUNC0(1));
		lhi = FUNC5(client, FUNC2(0));
		rhi = FUNC5(client, FUNC2(1));

		/*
		 * Fail for negative temperatures and negative high limits.
		 * This check also catches read errors on the tested registers.
		 */
		if ((s8)lte < 0 || (s8)rte < 0 || (s8)lhi < 0 || (s8)rhi < 0)
			return -ENODEV;

		/* fail if all registers hold the same value */
		if (lte == rte && lte == lhi && lte == rhi && lte == llo
		    && lte == rlo)
			return -ENODEV;

		/*
		 * LM84 Mfr ID is in a different place,
		 * and it has more unused bits.
		 */
		if (conv_rate == 0x00
		    && (config & 0x7F) == 0x00
		    && (status & 0xAB) == 0x00) {
			type_name = "lm84";
		} else {
			/* fail if low limits are larger than high limits */
			if ((s8)llo > lhi || (s8)rlo > rhi)
				return -ENODEV;
			type_name = "max1617";
		}
	}

	FUNC6("Detected chip %s at adapter %d, address 0x%02x.\n",
		 type_name, FUNC3(adapter), client->addr);
	FUNC7(info->type, type_name, I2C_NAME_SIZE);

	return 0;
}