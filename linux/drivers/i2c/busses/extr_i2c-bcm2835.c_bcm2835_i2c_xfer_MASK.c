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
struct i2c_msg {int flags; } ;
struct i2c_adapter {int /*<<< orphan*/  timeout; } ;
struct bcm2835_i2c_dev {int num_msgs; int msg_err; int /*<<< orphan*/  dev; int /*<<< orphan*/  completion; struct i2c_msg* curr_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM2835_I2C_C ; 
 int /*<<< orphan*/  BCM2835_I2C_C_CLEAR ; 
 int BCM2835_I2C_S_ERR ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int EREMOTEIO ; 
 int ETIMEDOUT ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (struct bcm2835_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct bcm2835_i2c_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct bcm2835_i2c_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct bcm2835_i2c_dev* FUNC6 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct i2c_adapter *adap, struct i2c_msg msgs[],
			    int num)
{
	struct bcm2835_i2c_dev *i2c_dev = FUNC6(adap);
	unsigned long time_left;
	int i;

	for (i = 0; i < (num - 1); i++)
		if (msgs[i].flags & I2C_M_RD) {
			FUNC5(i2c_dev->dev,
				      "only one read message supported, has to be last\n");
			return -EOPNOTSUPP;
		}

	i2c_dev->curr_msg = msgs;
	i2c_dev->num_msgs = num;
	FUNC7(&i2c_dev->completion);

	FUNC1(i2c_dev);

	time_left = FUNC8(&i2c_dev->completion,
						adap->timeout);

	FUNC0(i2c_dev);

	if (!time_left) {
		FUNC2(i2c_dev, BCM2835_I2C_C,
				   BCM2835_I2C_C_CLEAR);
		FUNC4(i2c_dev->dev, "i2c transfer timed out\n");
		return -ETIMEDOUT;
	}

	if (!i2c_dev->msg_err)
		return num;

	FUNC3(i2c_dev->dev, "i2c transfer failed: %x\n", i2c_dev->msg_err);

	if (i2c_dev->msg_err & BCM2835_I2C_S_ERR)
		return -EREMOTEIO;

	return -EIO;
}