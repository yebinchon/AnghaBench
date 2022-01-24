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
 int LM73_ID ; 
 int /*<<< orphan*/  LM73_REG_CONF ; 
 int /*<<< orphan*/  LM73_REG_CTRL ; 
 int /*<<< orphan*/  LM73_REG_ID ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *new_client,
			struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;
	int id, ctrl, conf;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA |
					I2C_FUNC_SMBUS_WORD_DATA))
		return -ENODEV;

	/*
	 * Do as much detection as possible with byte reads first, as word
	 * reads can confuse other devices.
	 */
	ctrl = FUNC1(new_client, LM73_REG_CTRL);
	if (ctrl < 0 || (ctrl & 0x10))
		return -ENODEV;

	conf = FUNC1(new_client, LM73_REG_CONF);
	if (conf < 0 || (conf & 0x0c))
		return -ENODEV;

	id = FUNC1(new_client, LM73_REG_ID);
	if (id < 0 || id != (LM73_ID & 0xff))
		return -ENODEV;

	/* Check device ID */
	id = FUNC2(new_client, LM73_REG_ID);
	if (id < 0 || id != LM73_ID)
		return -ENODEV;

	FUNC3(info->type, "lm73", I2C_NAME_SIZE);

	return 0;
}