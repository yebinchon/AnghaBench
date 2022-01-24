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
struct w83781d_data {int type; int /*<<< orphan*/ * lm75; } ;
struct i2c_client {int addr; int /*<<< orphan*/  dev; struct i2c_adapter* adapter; } ;
struct i2c_adapter {int dummy; } ;
typedef  enum chips { ____Placeholder_chips } chips ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  W83781D_REG_I2C_SUBADDR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int* force_subclients ; 
 int FUNC3 (struct i2c_adapter*) ; 
 struct w83781d_data* FUNC4 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_adapter*,unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct w83781d_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct w83781d_data*,int /*<<< orphan*/ ,int) ; 
 int w83783s ; 

__attribute__((used)) static int
FUNC9(struct i2c_client *new_client)
{
	int i, val1 = 0, id;
	int err;
	int address = new_client->addr;
	unsigned short sc_addr[2];
	struct i2c_adapter *adapter = new_client->adapter;
	struct w83781d_data *data = FUNC4(new_client);
	enum chips kind = data->type;
	int num_sc = 1;

	id = FUNC3(adapter);

	if (force_subclients[0] == id && force_subclients[1] == address) {
		for (i = 2; i <= 3; i++) {
			if (force_subclients[i] < 0x48 ||
			    force_subclients[i] > 0x4f) {
				FUNC2(&new_client->dev,
					"Invalid subclient address %d; must be 0x48-0x4f\n",
					force_subclients[i]);
				err = -EINVAL;
				goto ERROR_SC_1;
			}
		}
		FUNC8(data, W83781D_REG_I2C_SUBADDR,
				(force_subclients[2] & 0x07) |
				((force_subclients[3] & 0x07) << 4));
		sc_addr[0] = force_subclients[2];
	} else {
		val1 = FUNC7(data, W83781D_REG_I2C_SUBADDR);
		sc_addr[0] = 0x48 + (val1 & 0x07);
	}

	if (kind != w83783s) {
		num_sc = 2;
		if (force_subclients[0] == id &&
		    force_subclients[1] == address) {
			sc_addr[1] = force_subclients[3];
		} else {
			sc_addr[1] = 0x48 + ((val1 >> 4) & 0x07);
		}
		if (sc_addr[0] == sc_addr[1]) {
			FUNC2(&new_client->dev,
			       "Duplicate addresses 0x%x for subclients.\n",
			       sc_addr[0]);
			err = -EBUSY;
			goto ERROR_SC_2;
		}
	}

	for (i = 0; i < num_sc; i++) {
		data->lm75[i] = FUNC5(adapter, sc_addr[i]);
		if (FUNC0(data->lm75[i])) {
			FUNC2(&new_client->dev,
				"Subclient %d registration at address 0x%x failed.\n",
				i, sc_addr[i]);
			err = FUNC1(data->lm75[i]);
			if (i == 1)
				goto ERROR_SC_3;
			goto ERROR_SC_2;
		}
	}

	return 0;

/* Undo inits in case of errors */
ERROR_SC_3:
	FUNC6(data->lm75[0]);
ERROR_SC_2:
ERROR_SC_1:
	return err;
}