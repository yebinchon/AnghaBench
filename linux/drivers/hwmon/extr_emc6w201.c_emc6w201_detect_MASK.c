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
struct i2c_client {int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMC6W201_REG_COMPANY ; 
 int /*<<< orphan*/  EMC6W201_REG_CONFIG ; 
 int /*<<< orphan*/  EMC6W201_REG_VERSTEP ; 
 int ENODEV ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			   struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int company, verstep, config;

	if (!FUNC2(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	/* Identification */
	company = FUNC3(client, EMC6W201_REG_COMPANY);
	if (company != 0x5C)
		return -ENODEV;
	verstep = FUNC3(client, EMC6W201_REG_VERSTEP);
	if (verstep < 0 || (verstep & 0xF0) != 0xB0)
		return -ENODEV;
	if ((verstep & 0x0F) > 2) {
		FUNC0(&client->dev, "Unknown EMC6W201 stepping %d\n",
			verstep & 0x0F);
		return -ENODEV;
	}

	/* Check configuration */
	config = FUNC3(client, EMC6W201_REG_CONFIG);
	if (config < 0 || (config & 0xF4) != 0x04)
		return -ENODEV;
	if (!(config & 0x01)) {
		FUNC1(&client->dev, "Monitoring not enabled\n");
		return -ENODEV;
	}

	FUNC4(info->type, "emc6w201", I2C_NAME_SIZE);

	return 0;
}