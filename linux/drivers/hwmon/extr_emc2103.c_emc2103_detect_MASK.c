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
 int /*<<< orphan*/  REG_MFG_ID ; 
 int /*<<< orphan*/  REG_PRODUCT_ID ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct i2c_client *new_client, struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = new_client->adapter;
	int manufacturer, product;

	if (!FUNC0(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	manufacturer = FUNC1(new_client, REG_MFG_ID);
	if (manufacturer != 0x5D)
		return -ENODEV;

	product = FUNC1(new_client, REG_PRODUCT_ID);
	if ((product != 0x24) && (product != 0x26))
		return -ENODEV;

	FUNC2(info->type, "emc2103", I2C_NAME_SIZE);

	return 0;
}