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
struct i2c_msg {int flags; int len; int /*<<< orphan*/  buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;
struct dln2_i2c {int dummy; } ;

/* Variables and functions */
 int EPROTO ; 
 int I2C_M_RD ; 
 int FUNC0 (struct dln2_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct dln2_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct dln2_i2c* FUNC2 (struct i2c_adapter*) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter *adapter,
			 struct i2c_msg *msgs, int num)
{
	struct dln2_i2c *dln2 = FUNC2(adapter);
	struct i2c_msg *pmsg;
	int i;

	for (i = 0; i < num; i++) {
		int ret;

		pmsg = &msgs[i];

		if (pmsg->flags & I2C_M_RD) {
			ret = FUNC0(dln2, pmsg->addr, pmsg->buf,
					    pmsg->len);
			if (ret < 0)
				return ret;

			pmsg->len = ret;
		} else {
			ret = FUNC1(dln2, pmsg->addr, pmsg->buf,
					     pmsg->len);
			if (ret != pmsg->len)
				return -EPROTO;
		}
	}

	return num;
}