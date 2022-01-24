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
 int ICR_IUE ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ i2c_debug ; 
 int FUNC2 (struct pxa_i2c*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_i2c*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_i2c*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct i2c_adapter *adap,
			    struct i2c_msg msgs[], int num)
{
	struct pxa_i2c *i2c = adap->algo_data;
	int ret, i;

	/* If the I2C controller is disabled we need to reset it
	  (probably due to a suspend/resume destroying state). We do
	  this here as we can then avoid worrying about resuming the
	  controller before its users. */
	if (!(FUNC6(FUNC0(i2c)) & ICR_IUE))
		FUNC3(i2c);

	for (i = adap->retries; i >= 0; i--) {
		ret = FUNC2(i2c, msgs, num);
		if (ret != I2C_RETRY)
			goto out;

		if (i2c_debug)
			FUNC1(&adap->dev, "Retrying transmission\n");
		FUNC7(100);
	}
	FUNC4(i2c, "exhausted retries");
	ret = -EREMOTEIO;
 out:
	FUNC5(i2c, ret);
	return ret;
}