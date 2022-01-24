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
typedef  int u32 ;
struct pxa_i2c {int msg_ptr; scalar_t__ msg_idx; int msg_num; int req_slave_addr; int* icrlog; int irqlogidx; TYPE_1__* msg; } ;
struct TYPE_2__ {int flags; int len; int* buf; } ;

/* Variables and functions */
 int BUS_ERROR ; 
 int I2C_M_IGNORE_NAK ; 
 int I2C_M_NOSTART ; 
 int I2C_M_STOP ; 
 int I2C_RETRY ; 
 int ICR_ACKNAK ; 
 int ICR_ALDIE ; 
 int ICR_START ; 
 int ICR_STOP ; 
 int ICR_TB ; 
 int ISR_ACKNAK ; 
 int ISR_ALD ; 
 int ISR_BED ; 
 int ISR_RWM ; 
 int XFER_NAKED ; 
 int /*<<< orphan*/  FUNC0 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_i2c*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct pxa_i2c*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct pxa_i2c*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pxa_i2c*) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct pxa_i2c *i2c, u32 isr)
{
	u32 icr = FUNC6(FUNC0(i2c)) & ~(ICR_START|ICR_STOP|ICR_ACKNAK|ICR_TB);

 again:
	/*
	 * If ISR_ALD is set, we lost arbitration.
	 */
	if (isr & ISR_ALD) {
		/*
		 * Do we need to do anything here?  The PXA docs
		 * are vague about what happens.
		 */
		FUNC5(i2c, "ALD set");

		/*
		 * We ignore this error.  We seem to see spurious ALDs
		 * for seemingly no reason.  If we handle them as I think
		 * they should, we end up causing an I2C error, which
		 * is painful for some systems.
		 */
		return; /* ignore */
	}

	if ((isr & ISR_BED) &&
		(!((i2c->msg->flags & I2C_M_IGNORE_NAK) &&
			(isr & ISR_ACKNAK)))) {
		int ret = BUS_ERROR;

		/*
		 * I2C bus error - either the device NAK'd us, or
		 * something more serious happened.  If we were NAK'd
		 * on the initial address phase, we can retry.
		 */
		if (isr & ISR_ACKNAK) {
			if (i2c->msg_ptr == 0 && i2c->msg_idx == 0)
				ret = I2C_RETRY;
			else
				ret = XFER_NAKED;
		}
		FUNC3(i2c, ret);
	} else if (isr & ISR_RWM) {
		/*
		 * Read mode.  We have just sent the address byte, and
		 * now we must initiate the transfer.
		 */
		if (i2c->msg_ptr == i2c->msg->len - 1 &&
		    i2c->msg_idx == i2c->msg_num - 1)
			icr |= ICR_STOP | ICR_ACKNAK;

		icr |= ICR_ALDIE | ICR_TB;
	} else if (i2c->msg_ptr < i2c->msg->len) {
		/*
		 * Write mode.  Write the next data byte.
		 */
		FUNC8(i2c->msg->buf[i2c->msg_ptr++], FUNC1(i2c));

		icr |= ICR_ALDIE | ICR_TB;

		/*
		 * If this is the last byte of the last message or last byte
		 * of any message with I2C_M_STOP (e.g. SCCB), send a STOP.
		 */
		if ((i2c->msg_ptr == i2c->msg->len) &&
			((i2c->msg->flags & I2C_M_STOP) ||
			(i2c->msg_idx == i2c->msg_num - 1)))
				icr |= ICR_STOP;

	} else if (i2c->msg_idx < i2c->msg_num - 1) {
		/*
		 * Next segment of the message.
		 */
		i2c->msg_ptr = 0;
		i2c->msg_idx ++;
		i2c->msg++;

		/*
		 * If we aren't doing a repeated start and address,
		 * go back and try to send the next byte.  Note that
		 * we do not support switching the R/W direction here.
		 */
		if (i2c->msg->flags & I2C_M_NOSTART)
			goto again;

		/*
		 * Write the next address.
		 */
		FUNC8(FUNC2(i2c->msg), FUNC1(i2c));
		i2c->req_slave_addr = FUNC2(i2c->msg);

		/*
		 * And trigger a repeated start, and send the byte.
		 */
		icr &= ~ICR_ALDIE;
		icr |= ICR_START | ICR_TB;
	} else {
		if (i2c->msg->len == 0) {
			/*
			 * Device probes have a message length of zero
			 * and need the bus to be reset before it can
			 * be used again.
			 */
			FUNC4(i2c);
		}
		FUNC3(i2c, 0);
	}

	i2c->icrlog[i2c->irqlogidx-1] = icr;

	FUNC8(icr, FUNC0(i2c));
	FUNC7(i2c);
}