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
struct meson_i2c {scalar_t__ state; scalar_t__ pos; scalar_t__ count; int /*<<< orphan*/  lock; int /*<<< orphan*/  done; TYPE_1__* msg; int /*<<< orphan*/  error; int /*<<< orphan*/  dev; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {scalar_t__ buf; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ REG_CTRL ; 
 unsigned int REG_CTRL_ERROR ; 
 int /*<<< orphan*/  REG_CTRL_START ; 
 scalar_t__ STATE_IDLE ; 
 scalar_t__ STATE_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct meson_i2c*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct meson_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct meson_i2c*) ; 
 int /*<<< orphan*/  FUNC5 (struct meson_i2c*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irqno, void *dev_id)
{
	struct meson_i2c *i2c = dev_id;
	unsigned int ctrl;

	FUNC7(&i2c->lock);

	FUNC4(i2c);
	FUNC5(i2c, REG_CTRL, REG_CTRL_START, 0);
	ctrl = FUNC6(i2c->regs + REG_CTRL);

	FUNC1(i2c->dev, "irq: state %d, pos %d, count %d, ctrl %08x\n",
		i2c->state, i2c->pos, i2c->count, ctrl);

	if (i2c->state == STATE_IDLE) {
		FUNC8(&i2c->lock);
		return IRQ_NONE;
	}

	if (ctrl & REG_CTRL_ERROR) {
		/*
		 * The bit is set when the IGNORE_NAK bit is cleared
		 * and the device didn't respond. In this case, the
		 * I2C controller automatically generates a STOP
		 * condition.
		 */
		FUNC1(i2c->dev, "error bit set\n");
		i2c->error = -ENXIO;
		i2c->state = STATE_IDLE;
		FUNC0(&i2c->done);
		goto out;
	}

	if (i2c->state == STATE_READ && i2c->count)
		FUNC2(i2c, i2c->msg->buf + i2c->pos, i2c->count);

	i2c->pos += i2c->count;

	if (i2c->pos >= i2c->msg->len) {
		i2c->state = STATE_IDLE;
		FUNC0(&i2c->done);
		goto out;
	}

	/* Restart the processing */
	FUNC3(i2c);
	FUNC5(i2c, REG_CTRL, REG_CTRL_START, REG_CTRL_START);
out:
	FUNC8(&i2c->lock);

	return IRQ_HANDLED;
}