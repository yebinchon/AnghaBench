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
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int I2C_M_STOP ; 
 int FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct i2c_adapter*,struct i2c_msg*,int) ; 

__attribute__((used)) static int FUNC2(struct i2c_adapter *adap,
				    struct i2c_msg *msgs, int num)
{
	struct i2c_msg *msg, *emsg = msgs + num;
	int ret;

	ret = FUNC0(adap);
	if (ret)
		return ret;

	for (msg = msgs; msg < emsg; msg++) {
		/* Emit STOP if it is the last message or I2C_M_STOP is set. */
		bool stop = (msg + 1 == emsg) || (msg->flags & I2C_M_STOP);

		ret = FUNC1(adap, msg, stop);
		if (ret)
			return ret;
	}

	return num;
}