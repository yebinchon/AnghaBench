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
struct sprd_i2c {int err; int /*<<< orphan*/  complete; int /*<<< orphan*/  count; int /*<<< orphan*/  buf; struct i2c_msg* msg; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {struct sprd_i2c* algo_data; } ;

/* Variables and functions */
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (struct sprd_i2c*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct sprd_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct sprd_i2c*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sprd_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sprd_i2c*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct sprd_i2c*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct i2c_adapter *i2c_adap,
			       struct i2c_msg *msg, bool is_last_msg)
{
	struct sprd_i2c *i2c_dev = i2c_adap->algo_data;

	i2c_dev->msg = msg;
	i2c_dev->buf = msg->buf;
	i2c_dev->count = msg->len;

	FUNC0(&i2c_dev->complete);
	FUNC4(i2c_dev);
	FUNC7(i2c_dev, msg);
	FUNC6(i2c_dev, msg->len);

	if (msg->flags & I2C_M_RD) {
		FUNC2(i2c_dev, 1);
		FUNC5(i2c_dev, 1);
	} else {
		FUNC2(i2c_dev, 0);
		FUNC5(i2c_dev, !!is_last_msg);
	}

	/*
	 * We should enable rx fifo full interrupt to get data when receiving
	 * full data.
	 */
	if (msg->flags & I2C_M_RD)
		FUNC8(i2c_dev, 1);
	else
		FUNC1(i2c_dev);

	FUNC3(i2c_dev);

	FUNC9(&i2c_dev->complete);

	return i2c_dev->err;
}