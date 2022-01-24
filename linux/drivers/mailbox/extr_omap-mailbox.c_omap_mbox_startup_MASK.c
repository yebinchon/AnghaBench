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
struct omap_mbox_queue {struct omap_mbox* mbox; } ;
struct omap_mbox {struct omap_mbox_queue* rxq; TYPE_1__* chan; scalar_t__ send_no_irq; int /*<<< orphan*/  name; int /*<<< orphan*/  irq; } ;
struct TYPE_2__ {int /*<<< orphan*/  txdone_method; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_RX ; 
 int /*<<< orphan*/  TXDONE_BY_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbox_interrupt ; 
 struct omap_mbox_queue* FUNC1 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mbox_queue*) ; 
 int /*<<< orphan*/  mbox_rx_work ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct omap_mbox*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct omap_mbox *mbox)
{
	int ret = 0;
	struct omap_mbox_queue *mq;

	mq = FUNC1(mbox, mbox_rx_work);
	if (!mq)
		return -ENOMEM;
	mbox->rxq = mq;
	mq->mbox = mbox;

	ret = FUNC4(mbox->irq, mbox_interrupt, IRQF_SHARED,
			  mbox->name, mbox);
	if (FUNC5(ret)) {
		FUNC3("failed to register mailbox interrupt:%d\n", ret);
		goto fail_request_irq;
	}

	if (mbox->send_no_irq)
		mbox->chan->txdone_method = TXDONE_BY_ACK;

	FUNC0(mbox, IRQ_RX);

	return 0;

fail_request_irq:
	FUNC2(mbox->rxq);
	return ret;
}