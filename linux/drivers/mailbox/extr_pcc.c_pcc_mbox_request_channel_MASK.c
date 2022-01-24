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
struct mbox_client {scalar_t__ knows_txdone; } ;
struct mbox_chan {scalar_t__ txdone_method; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_complete; struct mbox_client* cl; int /*<<< orphan*/ * active_req; scalar_t__ msg_count; scalar_t__ msg_free; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;

/* Variables and functions */
 int EBUSY ; 
 struct mbox_chan* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mbox_chan*) ; 
 int /*<<< orphan*/  MBOX_IRQ_NAME ; 
 scalar_t__ TXDONE_BY_ACK ; 
 scalar_t__ TXDONE_BY_POLL ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int FUNC3 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mbox_chan*) ; 
 struct mbox_chan* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int* pcc_doorbell_irq ; 
 TYPE_1__ pcc_mbox_ctrl ; 
 int /*<<< orphan*/  FUNC6 (struct mbox_chan*) ; 
 int /*<<< orphan*/  pcc_mbox_irq ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 

struct mbox_chan *FUNC10(struct mbox_client *cl,
		int subspace_id)
{
	struct device *dev = pcc_mbox_ctrl.dev;
	struct mbox_chan *chan;
	unsigned long flags;

	/*
	 * Each PCC Subspace is a Mailbox Channel.
	 * The PCC Clients get their PCC Subspace ID
	 * from their own tables and pass it here.
	 * This returns a pointer to the PCC subspace
	 * for the Client to operate on.
	 */
	chan = FUNC4(subspace_id);

	if (FUNC1(chan) || chan->cl) {
		FUNC2(dev, "Channel not found for idx: %d\n", subspace_id);
		return FUNC0(-EBUSY);
	}

	FUNC7(&chan->lock, flags);
	chan->msg_free = 0;
	chan->msg_count = 0;
	chan->active_req = NULL;
	chan->cl = cl;
	FUNC5(&chan->tx_complete);

	if (chan->txdone_method == TXDONE_BY_POLL && cl->knows_txdone)
		chan->txdone_method = TXDONE_BY_ACK;

	FUNC8(&chan->lock, flags);

	if (pcc_doorbell_irq[subspace_id] > 0) {
		int rc;

		rc = FUNC3(dev, pcc_doorbell_irq[subspace_id],
				      pcc_mbox_irq, 0, MBOX_IRQ_NAME, chan);
		if (FUNC9(rc)) {
			FUNC2(dev, "failed to register PCC interrupt %d\n",
				pcc_doorbell_irq[subspace_id]);
			FUNC6(chan);
			chan = FUNC0(rc);
		}
	}

	return chan;
}