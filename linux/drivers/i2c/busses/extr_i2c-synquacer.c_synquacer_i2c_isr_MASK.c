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
struct synquacer_i2c {int state; int /*<<< orphan*/  pclkrate; int /*<<< orphan*/  dev; TYPE_1__* msg; int /*<<< orphan*/  msg_idx; int /*<<< orphan*/  msg_ptr; scalar_t__ base; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int flags; unsigned char* buf; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAGAIN ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  STATE_READ 130 
#define  STATE_START 129 
#define  STATE_WRITE 128 
 unsigned char SYNQUACER_I2C_BCR_ACK ; 
 unsigned char SYNQUACER_I2C_BCR_BEIE ; 
 unsigned char SYNQUACER_I2C_BCR_BER ; 
 unsigned char SYNQUACER_I2C_BCR_INTE ; 
 unsigned char SYNQUACER_I2C_BCR_MSS ; 
 unsigned char SYNQUACER_I2C_BSR_AL ; 
 unsigned char SYNQUACER_I2C_BSR_FBT ; 
 unsigned char SYNQUACER_I2C_BSR_LRB ; 
 scalar_t__ SYNQUACER_I2C_REG_BCR ; 
 scalar_t__ SYNQUACER_I2C_REG_BSR ; 
 scalar_t__ SYNQUACER_I2C_REG_DAR ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct synquacer_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct synquacer_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct synquacer_i2c*) ; 
 unsigned char FUNC6 (scalar_t__) ; 
 int FUNC7 (struct synquacer_i2c*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct synquacer_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *dev_id)
{
	struct synquacer_i2c *i2c = dev_id;

	unsigned char byte;
	unsigned char bsr, bcr;
	int ret;

	bcr = FUNC6(i2c->base + SYNQUACER_I2C_REG_BCR);
	bsr = FUNC6(i2c->base + SYNQUACER_I2C_REG_BSR);
	FUNC1(i2c->dev, "bsr:0x%02x, bcr:0x%02x\n", bsr, bcr);

	if (bcr & SYNQUACER_I2C_BCR_BER) {
		FUNC2(i2c->dev, "bus error\n");
		FUNC8(i2c, -EAGAIN);
		goto out;
	}
	if ((bsr & SYNQUACER_I2C_BSR_AL) ||
	    !(bcr & SYNQUACER_I2C_BCR_MSS)) {
		FUNC1(i2c->dev, "arbitration lost\n");
		FUNC8(i2c, -EAGAIN);
		goto out;
	}

	switch (i2c->state) {
	case STATE_START:
		if (bsr & SYNQUACER_I2C_BSR_LRB) {
			FUNC1(i2c->dev, "ack was not received\n");
			FUNC8(i2c, -EAGAIN);
			goto out;
		}

		if (i2c->msg->flags & I2C_M_RD)
			i2c->state = STATE_READ;
		else
			i2c->state = STATE_WRITE;

		if (FUNC3(i2c) && i2c->msg->len == 0) {
			FUNC8(i2c, 0);
			goto out;
		}

		if (i2c->state == STATE_READ)
			goto prepare_read;

		/* fall through */

	case STATE_WRITE:
		if (bsr & SYNQUACER_I2C_BSR_LRB) {
			FUNC1(i2c->dev, "WRITE: No Ack\n");
			FUNC8(i2c, -EAGAIN);
			goto out;
		}

		if (!FUNC4(i2c)) {
			FUNC9(i2c->msg->buf[i2c->msg_ptr++],
			       i2c->base + SYNQUACER_I2C_REG_DAR);

			/* clear IRQ, and continue */
			FUNC9(SYNQUACER_I2C_BCR_BEIE |
			       SYNQUACER_I2C_BCR_MSS |
			       SYNQUACER_I2C_BCR_INTE,
			       i2c->base + SYNQUACER_I2C_REG_BCR);
			break;
		}
		if (FUNC3(i2c)) {
			FUNC8(i2c, 0);
			break;
		}
		FUNC1(i2c->dev, "WRITE: Next Message\n");

		i2c->msg_ptr = 0;
		i2c->msg_idx++;
		i2c->msg++;

		/* send the new start */
		ret = FUNC7(i2c, i2c->msg);
		if (ret < 0) {
			FUNC1(i2c->dev, "restart error (%d)\n", ret);
			FUNC8(i2c, -EAGAIN);
			break;
		}
		i2c->state = STATE_START;
		break;

	case STATE_READ:
		byte = FUNC6(i2c->base + SYNQUACER_I2C_REG_DAR);
		if (!(bsr & SYNQUACER_I2C_BSR_FBT)) /* data */
			i2c->msg->buf[i2c->msg_ptr++] = byte;
		else /* address */
			FUNC1(i2c->dev, "address:0x%02x. ignore it.\n", byte);

prepare_read:
		if (FUNC5(i2c)) {
			FUNC9(SYNQUACER_I2C_BCR_MSS |
			       SYNQUACER_I2C_BCR_BEIE |
			       SYNQUACER_I2C_BCR_INTE,
			       i2c->base + SYNQUACER_I2C_REG_BCR);
			break;
		}
		if (!FUNC4(i2c)) {
			FUNC9(SYNQUACER_I2C_BCR_MSS |
			       SYNQUACER_I2C_BCR_BEIE |
			       SYNQUACER_I2C_BCR_INTE |
			       SYNQUACER_I2C_BCR_ACK,
			       i2c->base + SYNQUACER_I2C_REG_BCR);
			break;
		}
		if (FUNC3(i2c)) {
			/* last message, send stop and complete */
			FUNC1(i2c->dev, "READ: Send Stop\n");
			FUNC8(i2c, 0);
			break;
		}
		FUNC1(i2c->dev, "READ: Next Transfer\n");

		i2c->msg_ptr = 0;
		i2c->msg_idx++;
		i2c->msg++;

		ret = FUNC7(i2c, i2c->msg);
		if (ret < 0) {
			FUNC1(i2c->dev, "restart error (%d)\n", ret);
			FUNC8(i2c, -EAGAIN);
		} else {
			i2c->state = STATE_START;
		}
		break;
	default:
		FUNC2(i2c->dev, "called in err STATE (%d)\n", i2c->state);
		break;
	}

out:
	FUNC0(10, i2c->pclkrate);
	return IRQ_HANDLED;
}