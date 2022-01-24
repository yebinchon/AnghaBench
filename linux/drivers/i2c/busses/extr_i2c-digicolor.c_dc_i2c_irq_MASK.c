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
typedef  int /*<<< orphan*/  u8 ;
struct dc_i2c {int state; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; TYPE_1__* msg; int /*<<< orphan*/  msgbuf_ptr; int /*<<< orphan*/  error; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int I2C_M_RD ; 
 int II_CMD_STATUS_ABORT ; 
 int II_CMD_STATUS_ACK_BAD ; 
 scalar_t__ II_INTFLAG_CLEAR ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
#define  STATE_ADDR 132 
 int STATE_IDLE ; 
#define  STATE_READ 131 
#define  STATE_START 130 
#define  STATE_STOP 129 
#define  STATE_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (struct dc_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct dc_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct dc_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct dc_i2c*) ; 
 int /*<<< orphan*/  FUNC6 (struct dc_i2c*) ; 
 int /*<<< orphan*/  FUNC7 (struct dc_i2c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct dc_i2c *i2c = dev_id;
	int cmd_status = FUNC2(i2c);
	unsigned long flags;
	u8 addr_cmd;

	FUNC10(1, i2c->regs + II_INTFLAG_CLEAR);

	FUNC8(&i2c->lock, flags);

	if (cmd_status == II_CMD_STATUS_ACK_BAD
	    || cmd_status == II_CMD_STATUS_ABORT) {
		i2c->error = -EIO;
		FUNC0(&i2c->done);
		goto out;
	}

	switch (i2c->state) {
	case STATE_START:
		addr_cmd = FUNC1(i2c->msg);
		FUNC7(i2c, addr_cmd);
		i2c->state = STATE_ADDR;
		break;
	case STATE_ADDR:
		if (i2c->msg->flags & I2C_M_RD) {
			FUNC3(i2c);
			i2c->state = STATE_READ;
			break;
		}
		i2c->state = STATE_WRITE;
		/* fall through */
	case STATE_WRITE:
		if (i2c->msgbuf_ptr < i2c->msg->len)
			FUNC6(i2c);
		else
			FUNC5(i2c);
		break;
	case STATE_READ:
		if (i2c->msgbuf_ptr < i2c->msg->len)
			FUNC4(i2c);
		else
			FUNC5(i2c);
		break;
	case STATE_STOP:
		i2c->state = STATE_IDLE;
		FUNC0(&i2c->done);
		break;
	}

out:
	FUNC9(&i2c->lock, flags);
	return IRQ_HANDLED;
}