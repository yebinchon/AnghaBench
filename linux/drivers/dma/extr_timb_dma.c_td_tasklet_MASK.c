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
typedef  int u32 ;
struct timb_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int chancnt; } ;
struct timb_dma {scalar_t__ membase; struct timb_dma_chan* channels; TYPE_1__ dma; } ;

/* Variables and functions */
 scalar_t__ TIMBDMA_IER ; 
 scalar_t__ TIMBDMA_ISR ; 
 int /*<<< orphan*/  FUNC0 (struct timb_dma_chan*) ; 
 int FUNC1 (struct timb_dma*) ; 
 int /*<<< orphan*/  FUNC2 (struct timb_dma_chan*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(unsigned long data)
{
	struct timb_dma *td = (struct timb_dma *)data;
	u32 isr;
	u32 ipr;
	u32 ier;
	int i;

	isr = FUNC3(td->membase + TIMBDMA_ISR);
	ipr = isr & FUNC1(td);

	/* ack the interrupts */
	FUNC4(ipr, td->membase + TIMBDMA_ISR);

	for (i = 0; i < td->dma.chancnt; i++)
		if (ipr & (1 << i)) {
			struct timb_dma_chan *td_chan = td->channels + i;
			FUNC6(&td_chan->lock);
			FUNC0(td_chan);
			if (!FUNC5(&td_chan->queue))
				FUNC2(td_chan);
			FUNC7(&td_chan->lock);
		}

	ier = FUNC1(td);
	FUNC4(ier, td->membase + TIMBDMA_IER);
}