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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct i2c_msg {int dummy; } ;
struct TYPE_3__ {int* buf; int len; scalar_t__ flags; int /*<<< orphan*/  addr; } ;
struct dib0090_fw_state {int* i2c_write_buffer; int /*<<< orphan*/  i2c_buffer_lock; TYPE_1__ msg; int /*<<< orphan*/  i2c; } ;

/* Variables and functions */
 int EINVAL ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct dib0090_fw_state *state, u8 reg, u16 val)
{
	int ret;

	if (FUNC3(&state->i2c_buffer_lock) < 0) {
		FUNC0("could not acquire lock\n");
		return -EINVAL;
	}

	state->i2c_write_buffer[0] = val >> 8;
	state->i2c_write_buffer[1] = val & 0xff;

	FUNC2(&state->msg, 0, sizeof(struct i2c_msg));
	state->msg.addr = reg;
	state->msg.flags = 0;
	state->msg.buf = state->i2c_write_buffer;
	state->msg.len = 2;
	if (FUNC1(state->i2c, &state->msg, 1) != 1) {
		FUNC5("DiB0090 I2C write failed\n");
		ret = -EREMOTEIO;
	} else
		ret = 0;

	FUNC4(&state->i2c_buffer_lock);
	return ret;
}