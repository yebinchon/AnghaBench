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
typedef  int u32 ;
struct zynqmp_dma_chan {int idle; int err; int /*<<< orphan*/  dev; int /*<<< orphan*/  tasklet; scalar_t__ regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int ZYNQMP_DMA_DONE ; 
 scalar_t__ ZYNQMP_DMA_IMR ; 
 int ZYNQMP_DMA_INT_DONE ; 
 int ZYNQMP_DMA_INT_ERR ; 
 int ZYNQMP_DMA_INT_OVRFL ; 
 scalar_t__ ZYNQMP_DMA_ISR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct zynqmp_dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct zynqmp_dma_chan*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct zynqmp_dma_chan*,int) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *data)
{
	struct zynqmp_dma_chan *chan = (struct zynqmp_dma_chan *)data;
	u32 isr, imr, status;
	irqreturn_t ret = IRQ_NONE;

	isr = FUNC2(chan->regs + ZYNQMP_DMA_ISR);
	imr = FUNC2(chan->regs + ZYNQMP_DMA_IMR);
	status = isr & ~imr;

	FUNC4(isr, chan->regs + ZYNQMP_DMA_ISR);
	if (status & ZYNQMP_DMA_INT_DONE) {
		FUNC3(&chan->tasklet);
		ret = IRQ_HANDLED;
	}

	if (status & ZYNQMP_DMA_DONE)
		chan->idle = true;

	if (status & ZYNQMP_DMA_INT_ERR) {
		chan->err = true;
		FUNC3(&chan->tasklet);
		FUNC1(chan->dev, "Channel %p has errors\n", chan);
		ret = IRQ_HANDLED;
	}

	if (status & ZYNQMP_DMA_INT_OVRFL) {
		FUNC5(chan, status);
		FUNC0(chan->dev, "Channel %p overflow interrupt\n", chan);
		ret = IRQ_HANDLED;
	}

	return ret;
}