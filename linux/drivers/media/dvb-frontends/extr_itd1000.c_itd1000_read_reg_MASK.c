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
typedef  int u8 ;
struct itd1000_state {int /*<<< orphan*/  i2c; int /*<<< orphan*/ * shadow; TYPE_1__* cfg; } ;
struct i2c_msg {int* buf; int len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  i2c_address; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int /*<<< orphan*/  I2C_M_RD ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct itd1000_state*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct itd1000_state *state, u8 reg)
{
	u8 val;
	struct i2c_msg msg[2] = {
		{ .addr = state->cfg->i2c_address, .flags = 0,        .buf = &reg, .len = 1 },
		{ .addr = state->cfg->i2c_address, .flags = I2C_M_RD, .buf = &val, .len = 1 },
	};

	/* ugly flexcop workaround */
	FUNC1(state, (reg - 1) & 0xff, &state->shadow[(reg - 1) & 0xff], 1);

	if (FUNC0(state->i2c, msg, 2) != 2) {
		FUNC2("itd1000 I2C read failed\n");
		return -EREMOTEIO;
	}
	return val;
}