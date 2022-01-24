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
struct pxa_i2c {int dummy; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int retries; int /*<<< orphan*/  dev; struct pxa_i2c* algo_data; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int I2C_RETRY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ i2c_debug ; 
 int FUNC1 (struct pxa_i2c*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa_i2c*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_i2c*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap, struct i2c_msg msgs[], int num)
{
	struct pxa_i2c *i2c = adap->algo_data;
	int ret, i;

	for (i = adap->retries; i >= 0; i--) {
		ret = FUNC1(i2c, msgs, num);
		if (ret != I2C_RETRY)
			goto out;

		if (i2c_debug)
			FUNC0(&adap->dev, "Retrying transmission\n");
		FUNC4(100);
	}
	FUNC2(i2c, "exhausted retries");
	ret = -EREMOTEIO;
 out:
	FUNC3(i2c, ret);
	return ret;
}