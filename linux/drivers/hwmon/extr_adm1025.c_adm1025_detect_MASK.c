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
struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADM1025_REG_CHIP_ID ; 
 int /*<<< orphan*/  ADM1025_REG_CONFIG ; 
 int /*<<< orphan*/  ADM1025_REG_MAN_ID ; 
 int /*<<< orphan*/  ADM1025_REG_STATUS1 ; 
 int /*<<< orphan*/  ADM1025_REG_STATUS2 ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_client *client,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	const char *name;
	u8 man_id, chip_id;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/* Check for unused bits */
	if ((FUNC2(client, ADM1025_REG_CONFIG) & 0x80)
	 || (FUNC2(client, ADM1025_REG_STATUS1) & 0xC0)
	 || (FUNC2(client, ADM1025_REG_STATUS2) & 0xBC)) {
		FUNC0(&adapter->dev, "ADM1025 detection failed at 0x%02x\n",
			client->addr);
		return -ENODEV;
	}

	/* Identification */
	chip_id = FUNC2(client, ADM1025_REG_CHIP_ID);
	if ((chip_id & 0xF0) != 0x20)
		return -ENODEV;

	man_id = FUNC2(client, ADM1025_REG_MAN_ID);
	if (man_id == 0x41)
		name = "adm1025";
	else if (man_id == 0xA1 && client->addr != 0x2E)
		name = "ne1619";
	else
		return -ENODEV;

	FUNC3(info->type, name, I2C_NAME_SIZE);

	return 0;
}