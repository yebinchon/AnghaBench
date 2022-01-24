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
struct i2c_msg {int flags; } ;
struct exynos5_i2c {int state; int /*<<< orphan*/  dev; int /*<<< orphan*/  msg_complete; scalar_t__ trans_done; scalar_t__ msg_ptr; struct i2c_msg* msg; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  EXYNOS5_I2C_TIMEOUT ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct exynos5_i2c*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct exynos5_i2c*) ; 
 int FUNC3 (struct exynos5_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct exynos5_i2c *i2c,
			      struct i2c_msg *msgs, int stop)
{
	unsigned long timeout;
	int ret;

	i2c->msg = msgs;
	i2c->msg_ptr = 0;
	i2c->trans_done = 0;

	FUNC4(&i2c->msg_complete);

	FUNC1(i2c, stop);

	timeout = FUNC5(&i2c->msg_complete,
					      EXYNOS5_I2C_TIMEOUT);
	if (timeout == 0)
		ret = -ETIMEDOUT;
	else
		ret = i2c->state;

	/*
	 * If this is the last message to be transfered (stop == 1)
	 * Then check if the bus can be brought back to idle.
	 */
	if (ret == 0 && stop)
		ret = FUNC3(i2c);

	if (ret < 0) {
		FUNC2(i2c);
		if (ret == -ETIMEDOUT)
			FUNC0(i2c->dev, "%s timeout\n",
				 (msgs->flags & I2C_M_RD) ? "rx" : "tx");
	}

	/* Return the state as in interrupt routine */
	return ret;
}