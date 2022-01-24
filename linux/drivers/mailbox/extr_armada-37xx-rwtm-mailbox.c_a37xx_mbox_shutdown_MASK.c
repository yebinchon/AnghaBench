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
struct a37xx_mbox {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ RWTM_HOST_INT_MASK ; 
 int SP_CMD_COMPLETE ; 
 int SP_CMD_QUEUE_FULL ; 
 int SP_CMD_QUEUE_FULL_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbox_chan*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mbox_chan *chan)
{
	u32 reg;
	struct a37xx_mbox *mbox = chan->con_priv;

	/* disable interrupt generation */
	reg = FUNC1(mbox->base + RWTM_HOST_INT_MASK);
	reg |= SP_CMD_COMPLETE | SP_CMD_QUEUE_FULL_ACCESS | SP_CMD_QUEUE_FULL;
	FUNC2(reg, mbox->base + RWTM_HOST_INT_MASK);

	FUNC0(mbox->dev, mbox->irq, chan);
}