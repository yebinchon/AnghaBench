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
struct synquacer_i2c {int msg_num; int msg_idx; int /*<<< orphan*/  speed_khz; int /*<<< orphan*/  dev; int /*<<< orphan*/  timeout_ms; int /*<<< orphan*/  completion; struct i2c_msg* msg; int /*<<< orphan*/  state; scalar_t__ msg_ptr; scalar_t__ base; } ;
struct i2c_msg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int EAGAIN ; 
 int EBUSY ; 
 int /*<<< orphan*/  STATE_START ; 
 unsigned char SYNQUACER_I2C_BSR_BB ; 
 scalar_t__ SYNQUACER_I2C_REG_BSR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct synquacer_i2c*) ; 
 int FUNC7 (struct synquacer_i2c*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct synquacer_i2c *i2c,
				struct i2c_msg *msgs, int num)
{
	unsigned char bsr;
	unsigned long timeout;
	int ret;

	FUNC6(i2c);
	bsr = FUNC4(i2c->base + SYNQUACER_I2C_REG_BSR);
	if (bsr & SYNQUACER_I2C_BSR_BB) {
		FUNC2(i2c->dev, "cannot get bus (bus busy)\n");
		return -EBUSY;
	}

	FUNC5(&i2c->completion);

	i2c->msg = msgs;
	i2c->msg_num = num;
	i2c->msg_ptr = 0;
	i2c->msg_idx = 0;
	i2c->state = STATE_START;

	ret = FUNC7(i2c, i2c->msg);
	if (ret < 0) {
		FUNC1(i2c->dev, "Address failed: (%d)\n", ret);
		return ret;
	}

	timeout = FUNC9(&i2c->completion,
					FUNC3(i2c->timeout_ms));
	if (timeout == 0) {
		FUNC1(i2c->dev, "timeout\n");
		return -EAGAIN;
	}

	ret = i2c->msg_idx;
	if (ret != num) {
		FUNC1(i2c->dev, "incomplete xfer (%d)\n", ret);
		return -EAGAIN;
	}

	/* wait 2 clock periods to ensure the stop has been through the bus */
	FUNC8(FUNC0(2 * 1000, i2c->speed_khz));

	return ret;
}