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
struct octeon_i2c {int dummy; } ;
struct i2c_msg {int len; int flags; scalar_t__ addr; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int I2C_M_RD ; 
 int I2C_M_RECV_LEN ; 
 struct octeon_i2c* FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (struct octeon_i2c*,struct i2c_msg*) ; 
 int FUNC2 (struct octeon_i2c*,struct i2c_msg*) ; 
 int FUNC3 (struct octeon_i2c*,struct i2c_msg*) ; 
 int FUNC4 (struct octeon_i2c*,struct i2c_msg*) ; 
 int FUNC5 (struct octeon_i2c*,scalar_t__,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC6 (struct octeon_i2c*) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_i2c*) ; 
 int FUNC8 (struct octeon_i2c*,scalar_t__,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
	struct octeon_i2c *i2c = FUNC0(adap);
	int i, ret = 0;

	if (num == 1) {
		if (msgs[0].len > 0 && msgs[0].len <= 8) {
			if (msgs[0].flags & I2C_M_RD)
				ret = FUNC3(i2c, msgs);
			else
				ret = FUNC4(i2c, msgs);
			goto out;
		}
	} else if (num == 2) {
		if ((msgs[0].flags & I2C_M_RD) == 0 &&
		    (msgs[1].flags & I2C_M_RECV_LEN) == 0 &&
		    msgs[0].len > 0 && msgs[0].len <= 2 &&
		    msgs[1].len > 0 && msgs[1].len <= 8 &&
		    msgs[0].addr == msgs[1].addr) {
			if (msgs[1].flags & I2C_M_RD)
				ret = FUNC1(i2c, msgs);
			else
				ret = FUNC2(i2c, msgs);
			goto out;
		}
	}

	for (i = 0; ret == 0 && i < num; i++) {
		struct i2c_msg *pmsg = &msgs[i];

		/* zero-length messages are not supported */
		if (!pmsg->len) {
			ret = -EOPNOTSUPP;
			break;
		}

		ret = FUNC6(i2c);
		if (ret)
			return ret;

		if (pmsg->flags & I2C_M_RD)
			ret = FUNC5(i2c, pmsg->addr, pmsg->buf,
					      &pmsg->len, pmsg->flags & I2C_M_RECV_LEN);
		else
			ret = FUNC8(i2c, pmsg->addr, pmsg->buf,
					       pmsg->len);
	}
	FUNC7(i2c);
out:
	return (ret != 0) ? ret : num;
}