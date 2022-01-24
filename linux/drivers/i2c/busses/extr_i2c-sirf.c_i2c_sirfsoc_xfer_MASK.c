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
struct sirfsoc_i2c {int msg_read; int last; int /*<<< orphan*/  clk; scalar_t__ finished_len; scalar_t__ cmd_ptr; scalar_t__ err_status; int /*<<< orphan*/  msg_len; int /*<<< orphan*/  buf; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {struct sirfsoc_i2c* algo_data; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sirfsoc_i2c*,struct i2c_msg*) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *adap, struct i2c_msg *msgs,
	int num)
{
	struct sirfsoc_i2c *siic = adap->algo_data;
	int i, ret;

	FUNC1(siic->clk);

	for (i = 0; i < num; i++) {
		siic->buf = msgs[i].buf;
		siic->msg_len = msgs[i].len;
		siic->msg_read = !!(msgs[i].flags & I2C_M_RD);
		siic->err_status = 0;
		siic->cmd_ptr = 0;
		siic->finished_len = 0;
		siic->last = (i == (num - 1));

		ret = FUNC2(siic, &msgs[i]);
		if (ret) {
			FUNC0(siic->clk);
			return ret;
		}
	}

	FUNC0(siic->clk);
	return num;
}