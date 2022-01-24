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
struct i2c_msg {int flags; int /*<<< orphan*/  buf; int /*<<< orphan*/  len; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ETIMEDOUT ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adap,
					struct i2c_msg *msg, bool stop)
{
	bool is_read = msg->flags & I2C_M_RD;
	bool recovery = false;
	int ret;

	if (is_read)
		ret = FUNC1(adap, msg->addr, msg->len, msg->buf);
	else
		ret = FUNC3(adap, msg->addr, msg->len, msg->buf);

	if (ret == -EAGAIN) /* could not acquire bus. bail out without STOP */
		return ret;

	if (ret == -ETIMEDOUT) {
		/* This error is fatal.  Needs recovery. */
		stop = false;
		recovery = true;
	}

	if (stop) {
		int ret2 = FUNC2(adap);

		if (ret2) {
			/* Failed to issue STOP.  The bus needs recovery. */
			recovery = true;
			ret = ret ?: ret2;
		}
	}

	if (recovery)
		FUNC0(adap);

	return ret;
}