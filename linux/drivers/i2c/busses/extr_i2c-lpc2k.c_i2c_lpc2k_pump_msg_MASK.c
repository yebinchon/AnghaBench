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
struct lpc2k_i2c {size_t msg_idx; scalar_t__ base; int /*<<< orphan*/  msg_status; int /*<<< orphan*/  wait; int /*<<< orphan*/  irq; TYPE_1__* msg; int /*<<< orphan*/  is_last; } ;
struct TYPE_2__ {size_t len; unsigned char* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENXIO ; 
 unsigned char LPC24XX_AA ; 
 scalar_t__ LPC24XX_I2CONCLR ; 
 scalar_t__ LPC24XX_I2CONSET ; 
 scalar_t__ LPC24XX_I2DAT ; 
 scalar_t__ LPC24XX_I2STAT ; 
 unsigned char LPC24XX_SI ; 
 unsigned char LPC24XX_STA ; 
 unsigned char LPC24XX_STO ; 
 unsigned char LPC24XX_STO_AA ; 
#define  MR_ADDR_R_ACK 138 
#define  MR_ADDR_R_NACK 137 
#define  MR_DATA_R_ACK 136 
#define  MR_DATA_R_NACK 135 
#define  MX_ADDR_W_ACK 134 
#define  MX_ADDR_W_NACK 133 
#define  MX_DATA_W_ACK 132 
#define  MX_DATA_W_NACK 131 
#define  M_DATA_ARB_LOST 130 
#define  M_REPSTART 129 
#define  M_START 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (TYPE_1__*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct lpc2k_i2c *i2c)
{
	unsigned char data;
	u32 status;

	/*
	 * I2C in the LPC2xxx series is basically a state machine.
	 * Just run through the steps based on the current status.
	 */
	status = FUNC2(i2c->base + LPC24XX_I2STAT);

	switch (status) {
	case M_START:
	case M_REPSTART:
		/* Start bit was just sent out, send out addr and dir */
		data = FUNC1(i2c->msg);

		FUNC4(data, i2c->base + LPC24XX_I2DAT);
		FUNC4(LPC24XX_STA, i2c->base + LPC24XX_I2CONCLR);
		break;

	case MX_ADDR_W_ACK:
	case MX_DATA_W_ACK:
		/*
		 * Address or data was sent out with an ACK. If there is more
		 * data to send, send it now
		 */
		if (i2c->msg_idx < i2c->msg->len) {
			FUNC4(i2c->msg->buf[i2c->msg_idx],
			       i2c->base + LPC24XX_I2DAT);
		} else if (i2c->is_last) {
			/* Last message, send stop */
			FUNC4(LPC24XX_STO_AA, i2c->base + LPC24XX_I2CONSET);
			FUNC4(LPC24XX_SI, i2c->base + LPC24XX_I2CONCLR);
			i2c->msg_status = 0;
			FUNC0(i2c->irq);
		} else {
			i2c->msg_status = 0;
			FUNC0(i2c->irq);
		}

		i2c->msg_idx++;
		break;

	case MR_ADDR_R_ACK:
		/* Receive first byte from slave */
		if (i2c->msg->len == 1) {
			/* Last byte, return NACK */
			FUNC4(LPC24XX_AA, i2c->base + LPC24XX_I2CONCLR);
		} else {
			/* Not last byte, return ACK */
			FUNC4(LPC24XX_AA, i2c->base + LPC24XX_I2CONSET);
		}

		FUNC4(LPC24XX_STA, i2c->base + LPC24XX_I2CONCLR);
		break;

	case MR_DATA_R_NACK:
		/*
		 * The I2C shows NACK status on reads, so we need to accept
		 * the NACK as an ACK here. This should be ok, as the real
		 * BACK would of been caught on the address write.
		 */
	case MR_DATA_R_ACK:
		/* Data was received */
		if (i2c->msg_idx < i2c->msg->len) {
			i2c->msg->buf[i2c->msg_idx] =
					FUNC2(i2c->base + LPC24XX_I2DAT);
		}

		/* If transfer is done, send STOP */
		if (i2c->msg_idx >= i2c->msg->len - 1 && i2c->is_last) {
			FUNC4(LPC24XX_STO_AA, i2c->base + LPC24XX_I2CONSET);
			FUNC4(LPC24XX_SI, i2c->base + LPC24XX_I2CONCLR);
			i2c->msg_status = 0;
		}

		/* Message is done */
		if (i2c->msg_idx >= i2c->msg->len - 1) {
			i2c->msg_status = 0;
			FUNC0(i2c->irq);
		}

		/*
		 * One pre-last data input, send NACK to tell the slave that
		 * this is going to be the last data byte to be transferred.
		 */
		if (i2c->msg_idx >= i2c->msg->len - 2) {
			/* One byte left to receive - NACK */
			FUNC4(LPC24XX_AA, i2c->base + LPC24XX_I2CONCLR);
		} else {
			/* More than one byte left to receive - ACK */
			FUNC4(LPC24XX_AA, i2c->base + LPC24XX_I2CONSET);
		}

		FUNC4(LPC24XX_STA, i2c->base + LPC24XX_I2CONCLR);
		i2c->msg_idx++;
		break;

	case MX_ADDR_W_NACK:
	case MX_DATA_W_NACK:
	case MR_ADDR_R_NACK:
		/* NACK processing is done */
		FUNC4(LPC24XX_STO_AA, i2c->base + LPC24XX_I2CONSET);
		i2c->msg_status = -ENXIO;
		FUNC0(i2c->irq);
		break;

	case M_DATA_ARB_LOST:
		/* Arbitration lost */
		i2c->msg_status = -EAGAIN;

		/* Release the I2C bus */
		FUNC4(LPC24XX_STA | LPC24XX_STO, i2c->base + LPC24XX_I2CONCLR);
		FUNC0(i2c->irq);
		break;

	default:
		/* Unexpected statuses */
		i2c->msg_status = -EIO;
		FUNC0(i2c->irq);
		break;
	}

	/* Exit on failure or all bytes transferred */
	if (i2c->msg_status != -EBUSY)
		FUNC3(&i2c->wait);

	/*
	 * If `msg_status` is zero, then `lpc2k_process_msg()`
	 * is responsible for clearing the SI flag.
	 */
	if (i2c->msg_status != 0)
		FUNC4(LPC24XX_SI, i2c->base + LPC24XX_I2CONCLR);
}