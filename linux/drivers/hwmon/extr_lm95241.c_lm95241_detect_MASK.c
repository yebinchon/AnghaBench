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
#define  LM95231_CHIP_ID 129 
#define  LM95241_CHIP_ID 128 
 int /*<<< orphan*/  LM95241_REG_R_CHIP_ID ; 
 int /*<<< orphan*/  LM95241_REG_R_MAN_ID ; 
 int NATSEMI_MAN_ID ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *new_client,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;
	const char *name;
	int mfg_id, chip_id;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	mfg_id = FUNC1(new_client, LM95241_REG_R_MAN_ID);
	if (mfg_id != NATSEMI_MAN_ID)
		return -ENODEV;

	chip_id = FUNC1(new_client, LM95241_REG_R_CHIP_ID);
	switch (chip_id) {
	case LM95231_CHIP_ID:
		name = "lm95231";
		break;
	case LM95241_CHIP_ID:
		name = "lm95241";
		break;
	default:
		return -ENODEV;
	}

	/* Fill the i2c board info */
	FUNC2(info->type, name, I2C_NAME_SIZE);
	return 0;
}