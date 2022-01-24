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
struct ep93xx_dma_desc {int complete; } ;
struct ep93xx_dma_chan {int /*<<< orphan*/  lock; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  flags; TYPE_1__* edma; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int (* hw_interrupt ) (struct ep93xx_dma_chan*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EP93XX_DMA_IS_CYCLIC ; 
#define  INTERRUPT_DONE 129 
#define  INTERRUPT_NEXT_BUFFER 128 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct ep93xx_dma_desc* FUNC2 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct ep93xx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct ep93xx_dma_chan *edmac = dev_id;
	struct ep93xx_dma_desc *desc;
	irqreturn_t ret = IRQ_HANDLED;

	FUNC3(&edmac->lock);

	desc = FUNC2(edmac);
	if (!desc) {
		FUNC1(FUNC0(edmac),
			 "got interrupt while active list is empty\n");
		FUNC4(&edmac->lock);
		return IRQ_NONE;
	}

	switch (edmac->edma->hw_interrupt(edmac)) {
	case INTERRUPT_DONE:
		desc->complete = true;
		FUNC6(&edmac->tasklet);
		break;

	case INTERRUPT_NEXT_BUFFER:
		if (FUNC7(EP93XX_DMA_IS_CYCLIC, &edmac->flags))
			FUNC6(&edmac->tasklet);
		break;

	default:
		FUNC1(FUNC0(edmac), "unknown interrupt!\n");
		ret = IRQ_NONE;
		break;
	}

	FUNC4(&edmac->lock);
	return ret;
}