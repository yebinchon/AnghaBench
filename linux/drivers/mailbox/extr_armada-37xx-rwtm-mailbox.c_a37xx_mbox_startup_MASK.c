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
typedef  int u32 ;
struct mbox_chan {struct a37xx_mbox* con_priv; } ;
struct a37xx_mbox {scalar_t__ base; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 scalar_t__ RWTM_HOST_INT_MASK ; 
 int SP_CMD_COMPLETE ; 
 int SP_CMD_QUEUE_FULL ; 
 int SP_CMD_QUEUE_FULL_ACCESS ; 
 int /*<<< orphan*/  a37xx_mbox_irq_handler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbox_chan*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct mbox_chan *chan)
{
	struct a37xx_mbox *mbox = chan->con_priv;
	u32 reg;
	int ret;

	ret = FUNC1(mbox->dev, mbox->irq, a37xx_mbox_irq_handler, 0,
			       DRIVER_NAME, chan);
	if (ret < 0) {
		FUNC0(mbox->dev, "Cannot request irq\n");
		return ret;
	}

	/* enable IRQ generation */
	reg = FUNC2(mbox->base + RWTM_HOST_INT_MASK);
	reg &= ~(SP_CMD_COMPLETE | SP_CMD_QUEUE_FULL_ACCESS | SP_CMD_QUEUE_FULL);
	FUNC3(reg, mbox->base + RWTM_HOST_INT_MASK);

	return 0;
}