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
struct a37xx_mbox {scalar_t__ base; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ RWTM_HOST_INT_RESET ; 
 int SP_CMD_COMPLETE ; 
 int SP_CMD_QUEUE_FULL ; 
 int SP_CMD_QUEUE_FULL_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbox_chan*,int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *data)
{
	struct mbox_chan *chan = data;
	struct a37xx_mbox *mbox = chan->con_priv;
	u32 reg;

	reg = FUNC3(mbox->base + RWTM_HOST_INT_RESET);

	if (reg & SP_CMD_COMPLETE)
		FUNC0(chan);

	if (reg & (SP_CMD_QUEUE_FULL_ACCESS | SP_CMD_QUEUE_FULL))
		FUNC1(mbox->dev, "Secure processor command queue full\n");

	FUNC4(reg, mbox->base + RWTM_HOST_INT_RESET);
	if (reg)
		FUNC2(chan, 0);

	return reg ? IRQ_HANDLED : IRQ_NONE;
}