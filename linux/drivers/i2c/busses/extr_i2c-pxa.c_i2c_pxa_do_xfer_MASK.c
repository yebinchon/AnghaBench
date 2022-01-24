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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct pxa_i2c {int msg_num; int msg_idx; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; scalar_t__ irqlogidx; scalar_t__ msg_ptr; struct i2c_msg* msg; TYPE_1__ adap; scalar_t__ high_mode; } ;
struct i2c_msg {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int I2C_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_i2c*,char*) ; 
 int FUNC2 (struct pxa_i2c*) ; 
 int FUNC3 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_i2c*) ; 
 int FUNC6 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 long FUNC9 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct pxa_i2c *i2c, struct i2c_msg *msg, int num)
{
	long timeout;
	int ret;

	/*
	 * Wait for the bus to become free.
	 */
	ret = FUNC6(i2c);
	if (ret) {
		FUNC0(&i2c->adap.dev, "i2c_pxa: timeout waiting for bus free\n");
		goto out;
	}

	/*
	 * Set master mode.
	 */
	ret = FUNC3(i2c);
	if (ret) {
		FUNC0(&i2c->adap.dev, "i2c_pxa_set_master: error %d\n", ret);
		goto out;
	}

	if (i2c->high_mode) {
		ret = FUNC2(i2c);
		if (ret) {
			FUNC0(&i2c->adap.dev, "i2c_pxa_send_mastercode timeout\n");
			goto out;
			}
	}

	FUNC7(&i2c->lock);

	i2c->msg = msg;
	i2c->msg_num = num;
	i2c->msg_idx = 0;
	i2c->msg_ptr = 0;
	i2c->irqlogidx = 0;

	FUNC4(i2c);

	FUNC8(&i2c->lock);

	/*
	 * The rest of the processing occurs in the interrupt handler.
	 */
	timeout = FUNC9(i2c->wait, i2c->msg_num == 0, HZ * 5);
	FUNC5(i2c);

	/*
	 * We place the return code in i2c->msg_idx.
	 */
	ret = i2c->msg_idx;

	if (!timeout && i2c->msg_num) {
		FUNC1(i2c, "timeout");
		ret = I2C_RETRY;
	}

 out:
	return ret;
}