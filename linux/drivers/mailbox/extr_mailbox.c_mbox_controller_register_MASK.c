#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  function; } ;
struct mbox_controller {int num_chans; int /*<<< orphan*/  node; scalar_t__ of_xlate; struct mbox_chan* chans; TYPE_2__ poll_hrt; int /*<<< orphan*/  dev; TYPE_1__* ops; scalar_t__ txdone_poll; scalar_t__ txdone_irq; } ;
struct mbox_chan {int txdone_method; int /*<<< orphan*/  lock; struct mbox_controller* mbox; int /*<<< orphan*/ * cl; } ;
struct TYPE_3__ {int /*<<< orphan*/  last_tx_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int EINVAL ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 int TXDONE_BY_ACK ; 
 int TXDONE_BY_IRQ ; 
 int TXDONE_BY_POLL ; 
 int /*<<< orphan*/  con_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbox_cons ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ of_mbox_index_xlate ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  txdone_hrtimer ; 

int FUNC6(struct mbox_controller *mbox)
{
	int i, txdone;

	/* Sanity check */
	if (!mbox || !mbox->dev || !mbox->ops || !mbox->num_chans)
		return -EINVAL;

	if (mbox->txdone_irq)
		txdone = TXDONE_BY_IRQ;
	else if (mbox->txdone_poll)
		txdone = TXDONE_BY_POLL;
	else /* It has to be ACK then */
		txdone = TXDONE_BY_ACK;

	if (txdone == TXDONE_BY_POLL) {

		if (!mbox->ops->last_tx_done) {
			FUNC0(mbox->dev, "last_tx_done method is absent\n");
			return -EINVAL;
		}

		FUNC1(&mbox->poll_hrt, CLOCK_MONOTONIC,
			     HRTIMER_MODE_REL);
		mbox->poll_hrt.function = txdone_hrtimer;
	}

	for (i = 0; i < mbox->num_chans; i++) {
		struct mbox_chan *chan = &mbox->chans[i];

		chan->cl = NULL;
		chan->mbox = mbox;
		chan->txdone_method = txdone;
		FUNC5(&chan->lock);
	}

	if (!mbox->of_xlate)
		mbox->of_xlate = of_mbox_index_xlate;

	FUNC3(&con_mutex);
	FUNC2(&mbox->node, &mbox_cons);
	FUNC4(&con_mutex);

	return 0;
}