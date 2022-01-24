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
struct owl_dma_pchan {int id; int /*<<< orphan*/ * vchan; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct owl_dma {int /*<<< orphan*/  lock; TYPE_1__ dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  OWL_DMAX_INT_STATUS ; 
 int /*<<< orphan*/  OWL_DMAX_START ; 
 int /*<<< orphan*/  OWL_DMA_IRQ_EN0 ; 
 int /*<<< orphan*/  OWL_DMA_IRQ_PD0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct owl_dma*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct owl_dma*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct owl_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct owl_dma_pchan*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct owl_dma_pchan*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct owl_dma *od,
				    struct owl_dma_pchan *pchan)
{
	unsigned long flags;
	u32 irq_pd;

	FUNC5(pchan, OWL_DMAX_START, 0);
	FUNC4(pchan, OWL_DMAX_INT_STATUS, 0xff, false);

	FUNC6(&od->lock, flags);
	FUNC2(od, OWL_DMA_IRQ_EN0, (1 << pchan->id), false);

	irq_pd = FUNC1(od, OWL_DMA_IRQ_PD0);
	if (irq_pd & (1 << pchan->id)) {
		FUNC0(od->dma.dev,
			 "terminating pchan %d that still has pending irq\n",
			 pchan->id);
		FUNC3(od, OWL_DMA_IRQ_PD0, (1 << pchan->id));
	}

	pchan->vchan = NULL;

	FUNC7(&od->lock, flags);
}