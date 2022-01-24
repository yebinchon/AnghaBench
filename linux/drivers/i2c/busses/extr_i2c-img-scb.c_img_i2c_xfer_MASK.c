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
struct i2c_msg {int flags; int /*<<< orphan*/  len; } ;
struct img_i2c {scalar_t__ mode; int msg_status; int last_msg; int /*<<< orphan*/  check_timer; int /*<<< orphan*/  msg_complete; int /*<<< orphan*/  lock; struct i2c_msg msg; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct i2c_adapter {TYPE_1__ dev; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 int I2C_M_IGNORE_NAK ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  IMG_I2C_TIMEOUT ; 
 scalar_t__ MODE_FATAL ; 
 scalar_t__ MODE_SUSPEND ; 
 int /*<<< orphan*/  SCB_CLEAR_REG ; 
 int /*<<< orphan*/  SCB_INT_CLEAR_REG ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct img_i2c* FUNC3 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct img_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct img_i2c*) ; 
 int /*<<< orphan*/  FUNC6 (struct img_i2c*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct img_i2c*) ; 
 int /*<<< orphan*/  FUNC8 (struct img_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct i2c_adapter *adap, struct i2c_msg *msgs,
			int num)
{
	struct img_i2c *i2c = FUNC3(adap);
	bool atomic = false;
	int i, ret;
	unsigned long time_left;

	if (i2c->mode == MODE_SUSPEND) {
		FUNC0(1, "refusing to service transaction in suspended state\n");
		return -EIO;
	}

	if (i2c->mode == MODE_FATAL)
		return -EIO;

	for (i = 0; i < num; i++) {
		/*
		 * 0 byte reads are not possible because the slave could try
		 * and pull the data line low, preventing a stop bit.
		 */
		if (!msgs[i].len && msgs[i].flags & I2C_M_RD)
			return -EIO;
		/*
		 * 0 byte writes are possible and used for probing, but we
		 * cannot do them in automatic mode, so use atomic mode
		 * instead.
		 *
		 * Also, the I2C_M_IGNORE_NAK mode can only be implemented
		 * in atomic mode.
		 */
		if (!msgs[i].len ||
		    (msgs[i].flags & I2C_M_IGNORE_NAK))
			atomic = true;
	}

	ret = FUNC9(adap->dev.parent);
	if (ret < 0)
		return ret;

	for (i = 0; i < num; i++) {
		struct i2c_msg *msg = &msgs[i];
		unsigned long flags;

		FUNC13(&i2c->lock, flags);

		/*
		 * Make a copy of the message struct. We mustn't modify the
		 * original or we'll confuse drivers and i2c-dev.
		 */
		i2c->msg = *msg;
		i2c->msg_status = 0;

		/*
		 * After the last message we must have waited for a stop bit.
		 * Not waiting can cause problems when the clock is disabled
		 * before the stop bit is sent, and the linux I2C interface
		 * requires separate transfers not to joined with repeated
		 * start.
		 */
		i2c->last_msg = (i == num - 1);
		FUNC12(&i2c->msg_complete);

		/*
		 * Clear line status and all interrupts before starting a
		 * transfer, as we may have unserviced interrupts from
		 * previous transfers that might be handled in the context
		 * of the new transfer.
		 */
		FUNC8(i2c, SCB_INT_CLEAR_REG, ~0);
		FUNC8(i2c, SCB_CLEAR_REG, ~0);

		if (atomic) {
			FUNC4(i2c);
		} else {
			/*
			 * Enable transaction halt if not the last message in
			 * the queue so that we can control repeated starts.
			 */
			FUNC6(i2c, !i2c->last_msg);

			if (msg->flags & I2C_M_RD)
				FUNC5(i2c);
			else
				FUNC7(i2c);

			/*
			 * Release and then enable transaction halt, to
			 * allow only a single byte to proceed.
			 * This doesn't have an effect on the initial transfer
			 * but will allow the following transfers to start
			 * processing if the previous transfer was marked as
			 * complete while the i2c block was halted.
			 */
			FUNC6(i2c, false);
			FUNC6(i2c, !i2c->last_msg);
		}
		FUNC14(&i2c->lock, flags);

		time_left = FUNC15(&i2c->msg_complete,
						      IMG_I2C_TIMEOUT);
		FUNC1(&i2c->check_timer);

		if (time_left == 0) {
			FUNC2(adap->dev.parent, "i2c transfer timed out\n");
			i2c->msg_status = -ETIMEDOUT;
			break;
		}

		if (i2c->msg_status)
			break;
	}

	FUNC10(adap->dev.parent);
	FUNC11(adap->dev.parent);

	return i2c->msg_status ? i2c->msg_status : num;
}