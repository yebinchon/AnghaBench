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
struct i2c_msg {int flags; } ;
struct i2c_adapter {int retries; scalar_t__ timeout; TYPE_1__* algo; scalar_t__ quirks; } ;
struct TYPE_2__ {int (* master_xfer_atomic ) (struct i2c_adapter*,struct i2c_msg*,int) ;int (* master_xfer ) (struct i2c_adapter*,struct i2c_msg*,int) ;} ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int I2C_M_RD ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct i2c_adapter*) ; 
 scalar_t__ FUNC2 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  i2c_trace_msg_key ; 
 unsigned long jiffies ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 int FUNC6 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 scalar_t__ FUNC7 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct i2c_adapter*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct i2c_adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct i2c_adapter*,struct i2c_msg*,int) ; 

int FUNC12(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
	unsigned long orig_jiffies;
	int ret, try;

	if (FUNC0(!msgs || num < 1))
		return -EINVAL;

	ret = FUNC1(adap);
	if (ret)
		return ret;

	if (adap->quirks && FUNC2(adap, msgs, num))
		return -EOPNOTSUPP;

	/*
	 * i2c_trace_msg_key gets enabled when tracepoint i2c_transfer gets
	 * enabled.  This is an efficient way of keeping the for-loop from
	 * being executed when not needed.
	 */
	if (FUNC4(&i2c_trace_msg_key)) {
		int i;
		for (i = 0; i < num; i++)
			if (msgs[i].flags & I2C_M_RD)
				FUNC8(adap, &msgs[i], i);
			else
				FUNC11(adap, &msgs[i], i);
	}

	/* Retry automatically on arbitration loss */
	orig_jiffies = jiffies;
	for (ret = 0, try = 0; try <= adap->retries; try++) {
		if (FUNC3() && adap->algo->master_xfer_atomic)
			ret = adap->algo->master_xfer_atomic(adap, msgs, num);
		else
			ret = adap->algo->master_xfer(adap, msgs, num);

		if (ret != -EAGAIN)
			break;
		if (FUNC7(jiffies, orig_jiffies + adap->timeout))
			break;
	}

	if (FUNC4(&i2c_trace_msg_key)) {
		int i;
		for (i = 0; i < ret; i++)
			if (msgs[i].flags & I2C_M_RD)
				FUNC9(adap, &msgs[i], i);
		FUNC10(adap, num, ret);
	}

	return ret;
}