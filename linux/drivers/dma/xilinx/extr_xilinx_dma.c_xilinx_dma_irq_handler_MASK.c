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
struct xilinx_dma_chan {int err; int idle; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  lock; int /*<<< orphan*/  (* start_transfer ) (struct xilinx_dma_chan*) ;int /*<<< orphan*/  dev; int /*<<< orphan*/  flush_on_fsync; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int XILINX_DMA_DMASR_ALL_ERR_MASK ; 
 int XILINX_DMA_DMASR_DLY_CNT_IRQ ; 
 int XILINX_DMA_DMASR_ERR_IRQ ; 
 int XILINX_DMA_DMASR_ERR_RECOVER_MASK ; 
 int XILINX_DMA_DMASR_FRM_CNT_IRQ ; 
 int XILINX_DMA_DMAXR_ALL_IRQ_MASK ; 
 int /*<<< orphan*/  XILINX_DMA_REG_CURDESC ; 
 int /*<<< orphan*/  XILINX_DMA_REG_DMASR ; 
 int /*<<< orphan*/  XILINX_DMA_REG_TAILDESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct xilinx_dma_chan*,int,int,int) ; 
 int FUNC2 (struct xilinx_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct xilinx_dma_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct xilinx_dma_chan*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xilinx_dma_chan*) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *data)
{
	struct xilinx_dma_chan *chan = data;
	u32 status;

	/* Read the status and ack the interrupts. */
	status = FUNC2(chan, XILINX_DMA_REG_DMASR);
	if (!(status & XILINX_DMA_DMAXR_ALL_IRQ_MASK))
		return IRQ_NONE;

	FUNC3(chan, XILINX_DMA_REG_DMASR,
			status & XILINX_DMA_DMAXR_ALL_IRQ_MASK);

	if (status & XILINX_DMA_DMASR_ERR_IRQ) {
		/*
		 * An error occurred. If C_FLUSH_ON_FSYNC is enabled and the
		 * error is recoverable, ignore it. Otherwise flag the error.
		 *
		 * Only recoverable errors can be cleared in the DMASR register,
		 * make sure not to write to other error bits to 1.
		 */
		u32 errors = status & XILINX_DMA_DMASR_ALL_ERR_MASK;

		FUNC3(chan, XILINX_DMA_REG_DMASR,
				errors & XILINX_DMA_DMASR_ERR_RECOVER_MASK);

		if (!chan->flush_on_fsync ||
		    (errors & ~XILINX_DMA_DMASR_ERR_RECOVER_MASK)) {
			FUNC1(chan->dev,
				"Channel %p has errors %x, cdr %x tdr %x\n",
				chan, errors,
				FUNC2(chan, XILINX_DMA_REG_CURDESC),
				FUNC2(chan, XILINX_DMA_REG_TAILDESC));
			chan->err = true;
		}
	}

	if (status & XILINX_DMA_DMASR_DLY_CNT_IRQ) {
		/*
		 * Device takes too long to do the transfer when user requires
		 * responsiveness.
		 */
		FUNC0(chan->dev, "Inter-packet latency too long\n");
	}

	if (status & XILINX_DMA_DMASR_FRM_CNT_IRQ) {
		FUNC4(&chan->lock);
		FUNC8(chan);
		chan->idle = true;
		chan->start_transfer(chan);
		FUNC5(&chan->lock);
	}

	FUNC7(&chan->tasklet);
	return IRQ_HANDLED;
}