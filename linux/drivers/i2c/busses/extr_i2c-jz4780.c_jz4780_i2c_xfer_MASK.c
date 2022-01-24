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
struct jz4780_i2c {TYPE_1__ adap; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {struct jz4780_i2c* algo_data; } ;

/* Variables and functions */
 int EIO ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  JZ4780_I2C_TAR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct jz4780_i2c*) ; 
 int FUNC2 (struct jz4780_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct jz4780_i2c*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct jz4780_i2c*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct jz4780_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct jz4780_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap, struct i2c_msg *msg,
			   int count)
{
	int i = -EIO;
	int ret = 0;
	struct jz4780_i2c *i2c = adap->algo_data;

	ret = FUNC2(i2c);
	if (ret) {
		FUNC0(&i2c->adap.dev, "I2C prepare failed\n");
		goto out;
	}

	if (msg->addr != FUNC3(i2c, JZ4780_I2C_TAR)) {
		ret = FUNC4(i2c, msg->addr);
		if (ret)
			goto out;
	}
	for (i = 0; i < count; i++, msg++) {
		if (msg->flags & I2C_M_RD)
			ret = FUNC5(i2c, msg->buf, msg->len,
						   count, i);
		else
			ret = FUNC6(i2c, msg->buf, msg->len,
						    count, i);

		if (ret)
			goto out;
	}

	ret = i;

out:
	FUNC1(i2c);
	return ret;
}