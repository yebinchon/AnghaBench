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
 int EINTR ; 
 int /*<<< orphan*/  I2C_PCF_ESO ; 
 int I2C_PCF_LRB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 char FUNC1 (struct i2c_algo_pcf_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_algo_pcf_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_algo_pcf_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct i2c_algo_pcf_data*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_algo_pcf_data*,int*) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *i2c_adap, char *buf,
			 int count, int last)
{
	int i, status;
	struct i2c_algo_pcf_data *adap = i2c_adap->algo_data;
	int wfp;

	/* increment number of bytes to read by one -- read dummy byte */
	for (i = 0; i <= count; i++) {

		if ((wfp = FUNC5(adap, &status))) {
			if (wfp == -EINTR)
				return -EINTR; /* arbitration lost */

			FUNC3(adap);
			FUNC0(&i2c_adap->dev, "pcf_readbytes timed out.\n");
			return -1;
		}

		if ((status & I2C_PCF_LRB) && (i != count)) {
			FUNC3(adap);
			FUNC0(&i2c_adap->dev, "i2c_read: i2c_inb, No ack.\n");
			return -1;
		}

		if (i == count - 1) {
			FUNC4(adap, 1, I2C_PCF_ESO);
		} else if (i == count) {
			if (last)
				FUNC3(adap);
			else
				FUNC2(adap);
		}

		if (i)
			buf[i - 1] = FUNC1(adap);
		else
			FUNC1(adap); /* dummy read */
	}

	return i - 1;
}