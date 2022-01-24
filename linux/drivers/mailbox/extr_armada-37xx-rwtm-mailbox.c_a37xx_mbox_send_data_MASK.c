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
struct armada_37xx_rwtm_tx_msg {int /*<<< orphan*/  command; int /*<<< orphan*/ * args; } ;
struct a37xx_mbox {scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int FIFO_STS_CNTR_MASK ; 
 int FIFO_STS_CNTR_MAX ; 
 int FIFO_STS_RDY ; 
 scalar_t__ RWTM_MBOX_COMMAND ; 
 scalar_t__ RWTM_MBOX_FIFO_STATUS ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct mbox_chan *chan, void *data)
{
	struct a37xx_mbox *mbox = chan->con_priv;
	struct armada_37xx_rwtm_tx_msg *msg = data;
	int i;
	u32 reg;

	if (!data)
		return -EINVAL;

	reg = FUNC3(mbox->base + RWTM_MBOX_FIFO_STATUS);
	if (!(reg & FIFO_STS_RDY))
		FUNC2(mbox->dev, "Secure processor not ready\n");

	if ((reg & FIFO_STS_CNTR_MASK) >= FIFO_STS_CNTR_MAX) {
		FUNC1(mbox->dev, "Secure processor command queue full\n");
		return -EBUSY;
	}

	for (i = 0; i < 16; ++i)
		FUNC4(msg->args[i], mbox->base + FUNC0(i));
	FUNC4(msg->command, mbox->base + RWTM_MBOX_COMMAND);

	return 0;
}