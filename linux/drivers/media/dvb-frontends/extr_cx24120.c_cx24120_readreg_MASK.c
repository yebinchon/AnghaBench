#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct i2c_msg {int len; int* buf; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct cx24120_state {TYPE_2__* i2c; TYPE_1__* config; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  i2c_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (TYPE_2__*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC3(struct cx24120_state *state, u8 reg)
{
	int ret;
	u8 buf = 0;
	struct i2c_msg msg[] = {
		{
			.addr = state->config->i2c_addr,
			.flags = 0,
			.len = 1,
			.buf = &reg
		}, {
			.addr = state->config->i2c_addr,
			.flags = I2C_M_RD,
			.len = 1,
			.buf = &buf
		}
	};

	ret = FUNC2(state->i2c, msg, 2);
	if (ret != 2) {
		FUNC1("Read error: reg=0x%02x, ret=%i)\n", reg, ret);
		return ret;
	}

	FUNC0(&state->i2c->dev, "reg=0x%02x; data=0x%02x\n", reg, buf);

	return buf;
}