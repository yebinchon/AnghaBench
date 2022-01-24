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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct mxs_dma_engine {int /*<<< orphan*/  clk; TYPE_1__ dma_device; } ;
struct mxs_dma_chan {int /*<<< orphan*/  ccw_phys; int /*<<< orphan*/  ccw; int /*<<< orphan*/  chan_irq; struct mxs_dma_engine* mxs_dma; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCW_BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct mxs_dma_engine*) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_chan*) ; 
 struct mxs_dma_chan* FUNC4 (struct dma_chan*) ; 

__attribute__((used)) static void FUNC5(struct dma_chan *chan)
{
	struct mxs_dma_chan *mxs_chan = FUNC4(chan);
	struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;

	FUNC3(chan);

	FUNC2(mxs_chan->chan_irq, mxs_dma);

	FUNC1(mxs_dma->dma_device.dev, CCW_BLOCK_SIZE,
			mxs_chan->ccw, mxs_chan->ccw_phys);

	FUNC0(mxs_dma->clk);
}