#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct i2c_client {int dummy; } ;
struct cm3232_chip {int regs_cmd; struct i2c_client* client; } ;
typedef  scalar_t__ s32 ;
struct TYPE_3__ {int val; int val2; int it; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int CM3232_CMD_ALS_IT_MASK ; 
 int CM3232_CMD_ALS_IT_SHIFT ; 
 int /*<<< orphan*/  CM3232_REG_ADDR_CMD ; 
 int EINVAL ; 
 TYPE_1__* cm3232_als_it_scales ; 
 scalar_t__ FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct cm3232_chip *chip, int val, int val2)
{
	struct i2c_client *client = chip->client;
	u16 als_it, cmd;
	int i;
	s32 ret;

	for (i = 0; i < FUNC0(cm3232_als_it_scales); i++) {
		if (val == cm3232_als_it_scales[i].val &&
			val2 == cm3232_als_it_scales[i].val2) {

			als_it = cm3232_als_it_scales[i].it;
			als_it <<= CM3232_CMD_ALS_IT_SHIFT;

			cmd = chip->regs_cmd & ~CM3232_CMD_ALS_IT_MASK;
			cmd |= als_it;
			ret = FUNC1(client,
							CM3232_REG_ADDR_CMD,
							cmd);
			if (ret < 0)
				return ret;
			chip->regs_cmd = cmd;
			return 0;
		}
	}
	return -EINVAL;
}