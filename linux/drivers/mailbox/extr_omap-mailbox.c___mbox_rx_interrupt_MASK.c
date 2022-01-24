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
struct omap_mbox_queue {int full; int /*<<< orphan*/  work; int /*<<< orphan*/  fifo; } ;
struct omap_mbox {struct omap_mbox_queue* rxq; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_RX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct omap_mbox*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_mbox*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_mbox*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct omap_mbox *mbox)
{
	struct omap_mbox_queue *mq = mbox->rxq;
	u32 msg;
	int len;

	while (!FUNC5(mbox)) {
		if (FUNC8(FUNC3(&mq->fifo) < sizeof(msg))) {
			FUNC1(mbox, IRQ_RX);
			mq->full = true;
			goto nomem;
		}

		msg = FUNC6(mbox);

		len = FUNC4(&mq->fifo, (unsigned char *)&msg, sizeof(msg));
		FUNC0(len != sizeof(msg));
	}

	/* no more messages in the fifo. clear IRQ source. */
	FUNC2(mbox, IRQ_RX);
nomem:
	FUNC7(&mbox->rxq->work);
}