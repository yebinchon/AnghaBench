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
struct xilinx_dma_chan {int err; int idle; scalar_t__ desc_submitcount; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int XILINX_DMA_DMACR_RESET ; 
 int /*<<< orphan*/  XILINX_DMA_LOOP_COUNT ; 
 int /*<<< orphan*/  XILINX_DMA_REG_DMACR ; 
 int /*<<< orphan*/  XILINX_DMA_REG_DMASR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xilinx_dma_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct xilinx_dma_chan*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct xilinx_dma_chan*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct xilinx_dma_chan *chan)
{
	int err;
	u32 tmp;

	FUNC2(chan, XILINX_DMA_REG_DMACR, XILINX_DMA_DMACR_RESET);

	/* Wait for the hardware to finish reset */
	err = FUNC3(chan, XILINX_DMA_REG_DMACR, tmp,
				      !(tmp & XILINX_DMA_DMACR_RESET), 0,
				      XILINX_DMA_LOOP_COUNT);

	if (err) {
		FUNC0(chan->dev, "reset timeout, cr %x, sr %x\n",
			FUNC1(chan, XILINX_DMA_REG_DMACR),
			FUNC1(chan, XILINX_DMA_REG_DMASR));
		return -ETIMEDOUT;
	}

	chan->err = false;
	chan->idle = true;
	chan->desc_submitcount = 0;

	return err;
}