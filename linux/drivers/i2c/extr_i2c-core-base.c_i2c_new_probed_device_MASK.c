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
struct i2c_client {int dummy; } ;
struct i2c_board_info {unsigned short addr; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned short const I2C_CLIENT_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned short const) ; 
 scalar_t__ FUNC2 (unsigned short const) ; 
 scalar_t__ FUNC3 (struct i2c_adapter*,unsigned short const) ; 
 int FUNC4 (struct i2c_adapter*,unsigned short) ; 
 struct i2c_client* FUNC5 (struct i2c_adapter*,struct i2c_board_info*) ; 

struct i2c_client *
FUNC6(struct i2c_adapter *adap,
		      struct i2c_board_info *info,
		      unsigned short const *addr_list,
		      int (*probe)(struct i2c_adapter *adap, unsigned short addr))
{
	int i;

	if (!probe)
		probe = i2c_default_probe;

	for (i = 0; addr_list[i] != I2C_CLIENT_END; i++) {
		/* Check address validity */
		if (FUNC2(addr_list[i]) < 0) {
			FUNC1(&adap->dev, "Invalid 7-bit address 0x%02x\n",
				 addr_list[i]);
			continue;
		}

		/* Check address availability (7 bit, no need to encode flags) */
		if (FUNC3(adap, addr_list[i])) {
			FUNC0(&adap->dev,
				"Address 0x%02x already in use, not probing\n",
				addr_list[i]);
			continue;
		}

		/* Test address responsiveness */
		if (probe(adap, addr_list[i]))
			break;
	}

	if (addr_list[i] == I2C_CLIENT_END) {
		FUNC0(&adap->dev, "Probing failed, no device found\n");
		return NULL;
	}

	info->addr = addr_list[i];
	return FUNC5(adap, info);
}