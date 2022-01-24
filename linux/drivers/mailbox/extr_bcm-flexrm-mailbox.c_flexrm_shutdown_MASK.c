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
typedef  size_t u32 ;
struct mbox_chan {struct flexrm_ring* con_priv; } ;
struct flexrm_ring {int irq_requested; int /*<<< orphan*/ * bd_base; int /*<<< orphan*/  bd_dma_base; TYPE_1__* mbox; int /*<<< orphan*/ * cmpl_base; int /*<<< orphan*/  cmpl_dma_base; int /*<<< orphan*/  irq; int /*<<< orphan*/  requests_bmap; struct brcm_message** requests; int /*<<< orphan*/  num; scalar_t__ regs; } ;
struct brcm_message {int /*<<< orphan*/  error; } ;
struct TYPE_2__ {int /*<<< orphan*/  bd_pool; int /*<<< orphan*/  cmpl_pool; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONTROL_FLUSH_SHIFT ; 
 int /*<<< orphan*/  EIO ; 
 int FLUSH_DONE_MASK ; 
 scalar_t__ RING_CONTROL ; 
 scalar_t__ RING_FLUSH_DONE ; 
 size_t RING_MAX_REQ_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct brcm_message*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct flexrm_ring*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mbox_chan*,struct brcm_message*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC11(struct mbox_chan *chan)
{
	u32 reqid;
	unsigned int timeout;
	struct brcm_message *msg;
	struct flexrm_ring *ring = chan->con_priv;

	/* Disable/inactivate ring */
	FUNC10(0x0, ring->regs + RING_CONTROL);

	/* Set ring flush state */
	timeout = 1000; /* timeout of 1s */
	FUNC10(FUNC0(CONTROL_FLUSH_SHIFT),
			ring->regs + RING_CONTROL);
	do {
		if (FUNC9(ring->regs + RING_FLUSH_DONE) &
		    FLUSH_DONE_MASK)
			break;
		FUNC8(1);
	} while (--timeout);
	if (!timeout)
		FUNC2(ring->mbox->dev,
			"setting ring%d flush state timedout\n", ring->num);

	/* Clear ring flush state */
	timeout = 1000; /* timeout of 1s */
	FUNC10(0x0, ring->regs + RING_CONTROL);
	do {
		if (!(FUNC9(ring->regs + RING_FLUSH_DONE) &
		      FLUSH_DONE_MASK))
			break;
		FUNC8(1);
	} while (--timeout);
	if (!timeout)
		FUNC2(ring->mbox->dev,
			"clearing ring%d flush state timedout\n", ring->num);

	/* Abort all in-flight requests */
	for (reqid = 0; reqid < RING_MAX_REQ_COUNT; reqid++) {
		msg = ring->requests[reqid];
		if (!msg)
			continue;

		/* Release reqid for recycling */
		ring->requests[reqid] = NULL;

		/* Unmap DMA mappings */
		FUNC4(ring->mbox->dev, msg);

		/* Give-back message to mailbox client */
		msg->error = -EIO;
		FUNC7(chan, msg);
	}

	/* Clear requests bitmap */
	FUNC1(ring->requests_bmap, RING_MAX_REQ_COUNT);

	/* Release IRQ */
	if (ring->irq_requested) {
		FUNC6(ring->irq, NULL);
		FUNC5(ring->irq, ring);
		ring->irq_requested = false;
	}

	/* Free-up completion descriptor ring */
	if (ring->cmpl_base) {
		FUNC3(ring->mbox->cmpl_pool,
			      ring->cmpl_base, ring->cmpl_dma_base);
		ring->cmpl_base = NULL;
	}

	/* Free-up BD descriptor ring */
	if (ring->bd_base) {
		FUNC3(ring->mbox->bd_pool,
			      ring->bd_base, ring->bd_dma_base);
		ring->bd_base = NULL;
	}
}