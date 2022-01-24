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
typedef  int /*<<< orphan*/  u32 ;
struct mbox_chan {struct hi6220_mbox_chan* con_priv; } ;
struct hi6220_mbox_chan {unsigned int slot; int /*<<< orphan*/  dst_irq; int /*<<< orphan*/  dir; struct hi6220_mbox* parent; } ;
struct hi6220_mbox {int /*<<< orphan*/  ipc; scalar_t__ base; scalar_t__ tx_irq_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MBOX_ACK_AUTOMATIC ; 
 int /*<<< orphan*/  MBOX_ACK_IRQ ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int MBOX_MSG_LEN ; 
 int /*<<< orphan*/  MBOX_STATE_TX ; 
 int /*<<< orphan*/  MBOX_TX ; 
 int /*<<< orphan*/  FUNC3 (struct hi6220_mbox*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hi6220_mbox*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct mbox_chan *chan, void *msg)
{
	struct hi6220_mbox_chan *mchan = chan->con_priv;
	struct hi6220_mbox *mbox = mchan->parent;
	unsigned int slot = mchan->slot;
	u32 *buf = msg;
	int i;

	/* indicate as a TX channel */
	mchan->dir = MBOX_TX;

	FUNC4(mbox, slot, MBOX_STATE_TX);

	if (mbox->tx_irq_mode)
		FUNC3(mbox, slot, MBOX_ACK_IRQ);
	else
		FUNC3(mbox, slot, MBOX_ACK_AUTOMATIC);

	for (i = 0; i < MBOX_MSG_LEN; i++)
		FUNC5(buf[i], mbox->base + FUNC2(slot) + i * 4);

	/* trigger remote request */
	FUNC5(FUNC0(mchan->dst_irq), FUNC1(mbox->ipc));
	return 0;
}