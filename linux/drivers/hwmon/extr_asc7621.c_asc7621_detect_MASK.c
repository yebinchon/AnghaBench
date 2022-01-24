#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct i2c_client {int /*<<< orphan*/  addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int /*<<< orphan*/  type; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int company_id; int verstep_id; int /*<<< orphan*/  name; int /*<<< orphan*/  verstep_reg; int /*<<< orphan*/  company_reg; } ;

/* Variables and functions */
 int ENODEV ; 
 int FIRST_CHIP ; 
 int /*<<< orphan*/  I2C_FUNC_SMBUS_BYTE_DATA ; 
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int LAST_CHIP ; 
 TYPE_1__* asc7621_chips ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client,
			  struct i2c_board_info *info)
{
	struct i2c_adapter *adapter = client->adapter;
	int company, verstep, chip_index;

	if (!FUNC1(adapter, I2C_FUNC_SMBUS_BYTE_DATA))
		return -ENODEV;

	for (chip_index = FIRST_CHIP; chip_index <= LAST_CHIP; chip_index++) {

		if (!FUNC4(chip_index, client->addr))
			continue;

		company = FUNC2(client,
			asc7621_chips[chip_index].company_reg);
		verstep = FUNC2(client,
			asc7621_chips[chip_index].verstep_reg);

		if (company == asc7621_chips[chip_index].company_id &&
		    verstep == asc7621_chips[chip_index].verstep_id) {
			FUNC3(info->type, asc7621_chips[chip_index].name,
				I2C_NAME_SIZE);

			FUNC0(&adapter->dev, "Matched %s at 0x%02x\n",
				 asc7621_chips[chip_index].name, client->addr);
			return 0;
		}
	}

	return -ENODEV;
}