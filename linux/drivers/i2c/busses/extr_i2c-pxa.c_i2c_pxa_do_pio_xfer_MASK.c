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
struct pxa_i2c {int msg_num; int msg_idx; scalar_t__ irqlogidx; scalar_t__ msg_ptr; struct i2c_msg* msg; } ;
struct i2c_msg {int dummy; } ;

/* Variables and functions */
 int I2C_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pxa_i2c*) ; 
 int FUNC1 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_i2c*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct pxa_i2c *i2c,
			       struct i2c_msg *msg, int num)
{
	unsigned long timeout = 500000; /* 5 seconds */
	int ret = 0;

	ret = FUNC1(i2c);
	if (ret)
		goto out;

	i2c->msg = msg;
	i2c->msg_num = num;
	i2c->msg_idx = 0;
	i2c->msg_ptr = 0;
	i2c->irqlogidx = 0;

	FUNC3(i2c);

	while (i2c->msg_num > 0 && --timeout) {
		FUNC0(0, i2c);
		FUNC5(10);
	}

	FUNC4(i2c);

	/*
	 * We place the return code in i2c->msg_idx.
	 */
	ret = i2c->msg_idx;

out:
	if (timeout == 0) {
		FUNC2(i2c, "timeout");
		ret = I2C_RETRY;
	}

	return ret;
}