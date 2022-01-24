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
 int I2C_FUNC_SMBUS_BYTE_DATA ; 
 int I2C_FUNC_SMBUS_WORD_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int FUNC2 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client, struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int i, cur, conf, hyst, crit, min, max;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
				     I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	/*
	 * Here comes the remaining detection.  Since the LM77 has no
	 * register dedicated to identification, we have to rely on the
	 * following tricks:
	 *
	 * 1. the high 4 bits represent the sign and thus they should
	 *    always be the same
	 * 2. the high 3 bits are unused in the configuration register
	 * 3. addresses 0x06 and 0x07 return the last read value
	 * 4. registers cycling over 8-address boundaries
	 *
	 * Word-sized registers are high-byte first.
	 */

	/* addresses cycling */
	cur = FUNC2(client, 0);
	conf = FUNC1(client, 1);
	hyst = FUNC2(client, 2);
	crit = FUNC2(client, 3);
	min = FUNC2(client, 4);
	max = FUNC2(client, 5);
	for (i = 8; i <= 0xff; i += 8) {
		if (FUNC1(client, i + 1) != conf
		 || FUNC2(client, i + 2) != hyst
		 || FUNC2(client, i + 3) != crit
		 || FUNC2(client, i + 4) != min
		 || FUNC2(client, i + 5) != max)
			return -ENODEV;
	}

	/* sign bits */
	if (((cur & 0x00f0) != 0xf0 && (cur & 0x00f0) != 0x0)
	 || ((hyst & 0x00f0) != 0xf0 && (hyst & 0x00f0) != 0x0)
	 || ((crit & 0x00f0) != 0xf0 && (crit & 0x00f0) != 0x0)
	 || ((min & 0x00f0) != 0xf0 && (min & 0x00f0) != 0x0)
	 || ((max & 0x00f0) != 0xf0 && (max & 0x00f0) != 0x0))
		return -ENODEV;

	/* unused bits */
	if (conf & 0xe0)
		return -ENODEV;

	/* 0x06 and 0x07 return the last read value */
	cur = FUNC2(client, 0);
	if (FUNC2(client, 6) != cur
	 || FUNC2(client, 7) != cur)
		return -ENODEV;
	hyst = FUNC2(client, 2);
	if (FUNC2(client, 6) != hyst
	 || FUNC2(client, 7) != hyst)
		return -ENODEV;
	min = FUNC2(client, 4);
	if (FUNC2(client, 6) != min
	 || FUNC2(client, 7) != min)
		return -ENODEV;

	FUNC3(info->type, "lm77", I2C_NAME_SIZE);

	return 0;
}