#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct i2c_msg {int dummy; } ;
struct dib0070_state {int* i2c_write_buffer; int* i2c_read_buffer; int /*<<< orphan*/  i2c_buffer_lock; TYPE_2__* msg; int /*<<< orphan*/  i2c; TYPE_1__* cfg; } ;
struct TYPE_5__ {int* buf; int len; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {int /*<<< orphan*/  i2c_address; } ;

/* Variables and functions */
 scalar_t__ I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static u16 FUNC6(struct dib0070_state *state, u8 reg)
{
	u16 ret;

	if (FUNC3(&state->i2c_buffer_lock) < 0) {
		FUNC0("could not acquire lock\n");
		return 0;
	}

	state->i2c_write_buffer[0] = reg;

	FUNC2(state->msg, 0, 2 * sizeof(struct i2c_msg));
	state->msg[0].addr = state->cfg->i2c_address;
	state->msg[0].flags = 0;
	state->msg[0].buf = state->i2c_write_buffer;
	state->msg[0].len = 1;
	state->msg[1].addr = state->cfg->i2c_address;
	state->msg[1].flags = I2C_M_RD;
	state->msg[1].buf = state->i2c_read_buffer;
	state->msg[1].len = 2;

	if (FUNC1(state->i2c, state->msg, 2) != 2) {
		FUNC5("DiB0070 I2C read failed\n");
		ret = 0;
	} else
		ret = (state->i2c_read_buffer[0] << 8)
			| state->i2c_read_buffer[1];

	FUNC4(&state->i2c_buffer_lock);
	return ret;
}