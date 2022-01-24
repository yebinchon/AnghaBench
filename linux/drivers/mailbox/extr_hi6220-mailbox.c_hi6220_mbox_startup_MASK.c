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
struct mbox_chan {struct hi6220_mbox_chan* con_priv; } ;
struct hi6220_mbox_chan {int /*<<< orphan*/  ack_irq; scalar_t__ dir; struct hi6220_mbox* parent; } ;
struct hi6220_mbox {int /*<<< orphan*/  ipc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mbox_chan *chan)
{
	struct hi6220_mbox_chan *mchan = chan->con_priv;
	struct hi6220_mbox *mbox = mchan->parent;

	mchan->dir = 0;

	/* enable interrupt */
	FUNC2(FUNC1(mchan->ack_irq), FUNC0(mbox->ipc));
	return 0;
}