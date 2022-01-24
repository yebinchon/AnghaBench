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
typedef  int u16 ;
struct i2c_client {int dummy; } ;
struct asb100_data {int /*<<< orphan*/  lock; struct i2c_client** lm75; } ;

/* Variables and functions */
 int ASB100_REG_BANK ; 
 struct asb100_data* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct i2c_client *client, u16 reg, u16 value)
{
	struct asb100_data *data = FUNC0(client);
	struct i2c_client *cl;
	int bank;

	FUNC3(&data->lock);

	bank = (reg >> 8) & 0x0f;
	if (bank > 2)
		/* switch banks */
		FUNC1(client, ASB100_REG_BANK, bank);

	if (bank == 0 || bank > 2) {
		FUNC1(client, reg & 0xff, value & 0xff);
	} else {
		/* switch to subclient */
		cl = data->lm75[bank - 1];

		/* convert from ISA to LM75 I2C addresses */
		switch (reg & 0xff) {
		case 0x52: /* CONFIG */
			FUNC1(cl, 1, value & 0xff);
			break;
		case 0x53: /* HYST */
			FUNC2(cl, 2, value);
			break;
		case 0x55: /* MAX */
			FUNC2(cl, 3, value);
			break;
		}
	}

	if (bank > 2)
		FUNC1(client, ASB100_REG_BANK, 0);

	FUNC4(&data->lock);
}