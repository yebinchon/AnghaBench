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
struct i2c_algo_pcf_data {int dummy; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; struct i2c_algo_pcf_data* algo_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int EREMOTEIO ; 
 int I2C_PCF_LRB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_pcf_data*,char const) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_algo_pcf_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct i2c_algo_pcf_data*) ; 
 int FUNC6 (struct i2c_algo_pcf_data*,int*) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *i2c_adap, const char *buf,
			 int count, int last)
{
	struct i2c_algo_pcf_data *adap = i2c_adap->algo_data;
	int wrcount, status, timeout;

	for (wrcount=0; wrcount<count; ++wrcount) {
		FUNC0(FUNC1(&i2c_adap->dev, "i2c_write: writing %2.2X\n",
				buf[wrcount] & 0xff));
		FUNC3(adap, buf[wrcount]);
		timeout = FUNC6(adap, &status);
		if (timeout) {
			if (timeout == -EINTR)
				return -EINTR; /* arbitration lost */

			FUNC5(adap);
			FUNC2(&i2c_adap->dev, "i2c_write: error - timeout.\n");
			return -EREMOTEIO; /* got a better one ?? */
		}
		if (status & I2C_PCF_LRB) {
			FUNC5(adap);
			FUNC2(&i2c_adap->dev, "i2c_write: error - no ack.\n");
			return -EREMOTEIO; /* got a better one ?? */
		}
	}
	if (last)
		FUNC5(adap);
	else
		FUNC4(adap);

	return wrcount;
}