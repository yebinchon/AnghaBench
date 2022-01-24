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
struct mbox_chan {int dummy; } ;
struct altera_mbox {int /*<<< orphan*/  rxpoll_timer; int /*<<< orphan*/  is_sender; int /*<<< orphan*/  irq; scalar_t__ mbox_base; scalar_t__ intr_mode; } ;

/* Variables and functions */
 scalar_t__ MAILBOX_INTMASK_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mbox_chan*) ; 
 struct altera_mbox* FUNC2 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mbox_chan *chan)
{
	struct altera_mbox *mbox = FUNC2(chan);

	if (mbox->intr_mode) {
		/* Unmask all interrupt masks */
		FUNC3(~0, mbox->mbox_base + MAILBOX_INTMASK_REG);
		FUNC1(mbox->irq, chan);
	} else if (!mbox->is_sender) {
		FUNC0(&mbox->rxpoll_timer);
	}
}