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
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  LM80_REG_ALARM2 ; 
 int /*<<< orphan*/  LM80_REG_CONFIG ; 
 int /*<<< orphan*/  LM96080_REG_CONV_RATE ; 
 int /*<<< orphan*/  LM96080_REG_DEV_ID ; 
 int /*<<< orphan*/  LM96080_REG_MAN_ID ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int i, cur, man_id, dev_id;
	const char *name = NULL;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/* First check for unused bits, common to both chip types */
	if ((FUNC2(client, LM80_REG_ALARM2) & 0xc0)
	 || (FUNC2(client, LM80_REG_CONFIG) & 0x80))
		return -ENODEV;

	/*
	 * The LM96080 has manufacturer and stepping/die rev registers so we
	 * can just check that. The LM80 does not have such registers so we
	 * have to use a more expensive trick.
	 */
	man_id = FUNC2(client, LM96080_REG_MAN_ID);
	dev_id = FUNC2(client, LM96080_REG_DEV_ID);
	if (man_id == 0x01 && dev_id == 0x08) {
		/* Check more unused bits for confirmation */
		if (FUNC2(client, LM96080_REG_CONV_RATE) & 0xfe)
			return -ENODEV;

		name = "lm96080";
	} else {
		/* Check 6-bit addressing */
		for (i = 0x2a; i <= 0x3d; i++) {
			cur = FUNC1(client, i);
			if ((FUNC1(client, i + 0x40) != cur)
			 || (FUNC1(client, i + 0x80) != cur)
			 || (FUNC1(client, i + 0xc0) != cur))
				return -ENODEV;
		}

		name = "lm80";
	}

	FUNC3(info->type, name, I2C_NAME_SIZE);

	return 0;
}