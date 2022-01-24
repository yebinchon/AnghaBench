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
struct synquacer_i2c {int timeout_ms; int /*<<< orphan*/  dev; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int retries; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int FUNC0 (struct synquacer_i2c*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct synquacer_i2c* FUNC2 (struct i2c_adapter*) ; 
 int FUNC3 (struct synquacer_i2c*,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct synquacer_i2c*) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap, struct i2c_msg *msgs,
			      int num)
{
	struct synquacer_i2c *i2c;
	int retry;
	int ret;

	i2c = FUNC2(adap);
	i2c->timeout_ms = FUNC0(i2c, msgs, num);

	FUNC1(i2c->dev, "calculated timeout %d ms\n", i2c->timeout_ms);

	for (retry = 0; retry <= adap->retries; retry++) {
		ret = FUNC3(i2c, msgs, num);
		if (ret != -EAGAIN)
			return ret;

		FUNC1(i2c->dev, "Retrying transmission (%d)\n", retry);

		FUNC4(i2c);
	}
	return -EIO;
}