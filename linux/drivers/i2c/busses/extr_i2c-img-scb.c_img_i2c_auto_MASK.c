#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags; scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;
struct img_i2c {int /*<<< orphan*/  last_msg; TYPE_3__ msg; int /*<<< orphan*/  check_timer; int /*<<< orphan*/  int_enable; int /*<<< orphan*/  msg_status; TYPE_2__ adap; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int I2C_M_RD ; 
 unsigned int INT_ADDR_ACK_ERR ; 
 unsigned int INT_FIFO_EMPTY ; 
 unsigned int INT_FIFO_FULL_FILLING ; 
 unsigned int INT_MASTER_HALTED ; 
 int /*<<< orphan*/  INT_SLAVE_EVENT ; 
 unsigned int INT_STOP_DETECTED ; 
 unsigned int INT_WRITE_ACK_ERR ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int ISR_WAITSTOP ; 
 unsigned int LINESTAT_ABORT_DET ; 
 unsigned int LINESTAT_START_BIT_DET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct img_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct img_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct img_i2c*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct img_i2c*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static unsigned int FUNC8(struct img_i2c *i2c,
				 unsigned int int_status,
				 unsigned int line_status)
{
	if (int_status & (INT_WRITE_ACK_ERR | INT_ADDR_ACK_ERR))
		return FUNC0(EIO);

	if (line_status & LINESTAT_ABORT_DET) {
		FUNC1(i2c->adap.dev.parent, "abort condition detected\n");
		/* empty the read fifo */
		if ((i2c->msg.flags & I2C_M_RD) &&
		    (int_status & INT_FIFO_FULL_FILLING))
			FUNC2(i2c);
		/* use atomic mode and try to force a stop bit */
		i2c->msg_status = -EIO;
		FUNC3(i2c);
		return 0;
	}

	/* Enable transaction halt on start bit */
	if (!i2c->last_msg && line_status & LINESTAT_START_BIT_DET) {
		FUNC4(i2c, !i2c->last_msg);
		/* we're no longer interested in the slave event */
		i2c->int_enable &= ~INT_SLAVE_EVENT;
	}

	FUNC6(&i2c->check_timer, jiffies + FUNC7(1));

	if (int_status & INT_STOP_DETECTED) {
		/* Drain remaining data in FIFO and complete transaction */
		if (i2c->msg.flags & I2C_M_RD)
			FUNC2(i2c);
		return FUNC0(0);
	}

	if (i2c->msg.flags & I2C_M_RD) {
		if (int_status & (INT_FIFO_FULL_FILLING | INT_MASTER_HALTED)) {
			FUNC2(i2c);
			if (i2c->msg.len == 0)
				return ISR_WAITSTOP;
		}
	} else {
		if (int_status & (INT_FIFO_EMPTY | INT_MASTER_HALTED)) {
			if ((int_status & INT_FIFO_EMPTY) &&
			    i2c->msg.len == 0)
				return ISR_WAITSTOP;
			FUNC5(i2c);
		}
	}
	if (int_status & INT_MASTER_HALTED) {
		/*
		 * Release and then enable transaction halt, to
		 * allow only a single byte to proceed.
		 */
		FUNC4(i2c, false);
		FUNC4(i2c, !i2c->last_msg);
	}

	return 0;
}