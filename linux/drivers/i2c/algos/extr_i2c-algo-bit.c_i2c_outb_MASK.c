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
struct i2c_algo_bit_data {int udelay; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; struct i2c_algo_bit_data* algo_data; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_algo_bit_data*) ; 
 scalar_t__ FUNC2 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_algo_bit_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_algo_bit_data*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *i2c_adap, unsigned char c)
{
	int i;
	int sb;
	int ack;
	struct i2c_algo_bit_data *adap = i2c_adap->algo_data;

	/* assert: scl is low */
	for (i = 7; i >= 0; i--) {
		sb = (c >> i) & 1;
		FUNC5(adap, sb);
		FUNC6((adap->udelay + 1) / 2);
		if (FUNC2(adap) < 0) { /* timed out */
			FUNC0(1, &i2c_adap->dev,
				"i2c_outb: 0x%02x, timeout at bit #%d\n",
				(int)c, i);
			return -ETIMEDOUT;
		}
		/* FIXME do arbitration here:
		 * if (sb && !getsda(adap)) -> ouch! Get out of here.
		 *
		 * Report a unique code, so higher level code can retry
		 * the whole (combined) message and *NOT* issue STOP.
		 */
		FUNC3(adap);
	}
	FUNC4(adap);
	if (FUNC2(adap) < 0) { /* timeout */
		FUNC0(1, &i2c_adap->dev,
			"i2c_outb: 0x%02x, timeout at ack\n", (int)c);
		return -ETIMEDOUT;
	}

	/* read ack: SDA should be pulled down by slave, or it may
	 * NAK (usually to report problems with the data we wrote).
	 */
	ack = !FUNC1(adap);    /* ack: sda is pulled low -> success */
	FUNC0(2, &i2c_adap->dev, "i2c_outb: 0x%02x %s\n", (int)c,
		ack ? "A" : "NA");

	FUNC3(adap);
	return ack;
	/* assert: scl is low (sda undef) */
}