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
typedef  scalar_t__ u32 ;
struct lpc2k_i2c {int is_last; int /*<<< orphan*/  msg_status; scalar_t__ msg_idx; struct i2c_msg* msg; scalar_t__ base; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 scalar_t__ LPC24XX_I2STAT ; 
 scalar_t__ M_I2C_IDLE ; 
 struct lpc2k_i2c* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct lpc2k_i2c*) ; 
 int FUNC2 (struct lpc2k_i2c*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adap, struct i2c_msg *msgs,
			  int msg_num)
{
	struct lpc2k_i2c *i2c = FUNC0(adap);
	int ret, i;
	u32 stat;

	/* Check for bus idle condition */
	stat = FUNC3(i2c->base + LPC24XX_I2STAT);
	if (stat != M_I2C_IDLE) {
		/* Something is holding the bus, try to clear it */
		return FUNC1(i2c);
	}

	/* Process a single message at a time */
	for (i = 0; i < msg_num; i++) {
		/* Save message pointer and current message data index */
		i2c->msg = &msgs[i];
		i2c->msg_idx = 0;
		i2c->msg_status = -EBUSY;
		i2c->is_last = (i == (msg_num - 1));

		ret = FUNC2(i2c, i);
		if (ret)
			return ret;
	}

	return msg_num;
}