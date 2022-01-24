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
typedef  int u64 ;
struct octeon_i2c {scalar_t__ twsi_base; } ;
struct i2c_msg {int len; int addr; int flags; int* buf; } ;

/* Variables and functions */
 int I2C_M_TEN ; 
 scalar_t__ FUNC0 (struct octeon_i2c*) ; 
 int SW_TWSI_ADDR_SHIFT ; 
 int SW_TWSI_EIA ; 
 scalar_t__ FUNC1 (struct octeon_i2c*) ; 
 int SW_TWSI_IA_SHIFT ; 
 int SW_TWSI_OP_10_IA ; 
 int SW_TWSI_OP_7_IA ; 
 int SW_TWSI_R ; 
 int SW_TWSI_SIZE_SHIFT ; 
 int SW_TWSI_SOVR ; 
 int SW_TWSI_V ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (struct octeon_i2c*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct octeon_i2c*) ; 
 int FUNC6 (struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct octeon_i2c *i2c, struct i2c_msg *msgs)
{
	int i, j, ret = 0;
	u64 cmd;

	FUNC4(i2c);

	cmd = SW_TWSI_V | SW_TWSI_R | SW_TWSI_SOVR;
	/* SIZE */
	cmd |= (u64)(msgs[1].len - 1) << SW_TWSI_SIZE_SHIFT;
	/* A */
	cmd |= (u64)(msgs[0].addr & 0x7full) << SW_TWSI_ADDR_SHIFT;

	if (msgs[0].flags & I2C_M_TEN)
		cmd |= SW_TWSI_OP_10_IA;
	else
		cmd |= SW_TWSI_OP_7_IA;

	if (msgs[0].len == 2) {
		u64 ext = 0;

		cmd |= SW_TWSI_EIA;
		ext = (u64)msgs[0].buf[0] << SW_TWSI_IA_SHIFT;
		cmd |= (u64)msgs[0].buf[1] << SW_TWSI_IA_SHIFT;
		FUNC7(ext, i2c->twsi_base + FUNC1(i2c));
	} else {
		cmd |= (u64)msgs[0].buf[0] << SW_TWSI_IA_SHIFT;
	}

	FUNC5(i2c);
	FUNC7(cmd, i2c->twsi_base + FUNC0(i2c));

	ret = FUNC6(i2c);
	if (ret)
		goto err;

	cmd = FUNC2(i2c->twsi_base + FUNC0(i2c));
	if ((cmd & SW_TWSI_R) == 0)
		return FUNC3(i2c, false);

	for (i = 0, j = msgs[1].len - 1; i  < msgs[1].len && i < 4; i++, j--)
		msgs[1].buf[j] = (cmd >> (8 * i)) & 0xff;

	if (msgs[1].len > 4) {
		cmd = FUNC2(i2c->twsi_base + FUNC1(i2c));
		for (i = 0; i  < msgs[1].len - 4 && i < 4; i++, j--)
			msgs[1].buf[j] = (cmd >> (8 * i)) & 0xff;
	}

err:
	return ret;
}