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
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  THMC50_REG_COMPANY_ID ; 
 int /*<<< orphan*/  THMC50_REG_CONF ; 
 int /*<<< orphan*/  THMC50_REG_DIE_CODE ; 
 int* adm1022_temp3 ; 
 int adm1022_temp3_num ; 
 int FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client,
			 struct i2c_board_info *info)
{
	unsigned company;
	unsigned revision;
	unsigned config;
	struct i2c_adapter *adapter = client->adapter;
	const char *type_name;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA)) {
		FUNC4("thmc50: detect failed, smbus byte data not supported!\n");
		return -ENODEV;
	}

	FUNC4("thmc50: Probing for THMC50 at 0x%2X on bus %d\n",
		 client->addr, FUNC0(client->adapter));

	company = FUNC2(client, THMC50_REG_COMPANY_ID);
	revision = FUNC2(client, THMC50_REG_DIE_CODE);
	config = FUNC2(client, THMC50_REG_CONF);
	if (revision < 0xc0 || (config & 0x10))
		return -ENODEV;

	if (company == 0x41) {
		int id = FUNC0(client->adapter);
		int i;

		type_name = "adm1022";
		for (i = 0; i + 1 < adm1022_temp3_num; i += 2)
			if (adm1022_temp3[i] == id &&
			    adm1022_temp3[i + 1] == client->addr) {
				/* enable 2nd remote temp */
				config |= (1 << 7);
				FUNC3(client,
							  THMC50_REG_CONF,
							  config);
				break;
			}
	} else if (company == 0x49) {
		type_name = "thmc50";
	} else {
		FUNC4("thmc50: Detection of THMC50/ADM1022 failed\n");
		return -ENODEV;
	}

	FUNC4("thmc50: Detected %s (version %x, revision %x)\n",
		 type_name, (revision >> 4) - 0xc, revision & 0xf);

	FUNC5(info->type, type_name, I2C_NAME_SIZE);

	return 0;
}