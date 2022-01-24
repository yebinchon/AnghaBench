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
typedef  int u8 ;
typedef  int u16 ;
struct i2c_msg {int addr; int len; int* buf; int /*<<< orphan*/  flags; } ;
struct dib3000mc_state {int i2c_addr; int /*<<< orphan*/  i2c_adap; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EREMOTEIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dib3000mc_state *state, u16 reg, u16 val)
{
	struct i2c_msg msg = {
		.addr = state->i2c_addr >> 1, .flags = 0, .len = 4
	};
	int rc;
	u8 *b;

	b = FUNC2(4, GFP_KERNEL);
	if (!b)
		return -ENOMEM;

	b[0] = reg >> 8;
	b[1] = reg;
	b[2] = val >> 8;
	b[3] = val;

	msg.buf = b;

	rc = FUNC0(state->i2c_adap, &msg, 1) != 1 ? -EREMOTEIO : 0;
	FUNC1(b);

	return rc;
}