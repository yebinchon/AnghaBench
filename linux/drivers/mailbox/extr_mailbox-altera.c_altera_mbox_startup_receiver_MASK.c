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
struct altera_mbox {int intr_mode; int /*<<< orphan*/  rxpoll_timer; struct mbox_chan* chan; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int /*<<< orphan*/  MBOX_POLLING_MS ; 
 int /*<<< orphan*/  altera_mbox_poll_rx ; 
 int /*<<< orphan*/  altera_mbox_rx_interrupt ; 
 int /*<<< orphan*/  FUNC0 (struct altera_mbox*,int) ; 
 scalar_t__ jiffies ; 
 struct altera_mbox* FUNC1 (struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbox_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct mbox_chan *chan)
{
	int ret;
	struct altera_mbox *mbox = FUNC1(chan);

	if (mbox->intr_mode) {
		ret = FUNC4(mbox->irq, altera_mbox_rx_interrupt, 0,
				  DRIVER_NAME, chan);
		if (FUNC6(ret)) {
			mbox->intr_mode = false;
			goto polling; /* use polling if failed */
		}

		FUNC0(mbox, true);
		return 0;
	}

polling:
	/* Setup polling timer */
	mbox->chan = chan;
	FUNC5(&mbox->rxpoll_timer, altera_mbox_poll_rx, 0);
	FUNC2(&mbox->rxpoll_timer,
		  jiffies + FUNC3(MBOX_POLLING_MS));

	return 0;
}