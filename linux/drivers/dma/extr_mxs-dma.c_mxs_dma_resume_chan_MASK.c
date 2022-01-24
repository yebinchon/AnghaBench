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
struct mxs_dma_engine {scalar_t__ base; } ;
struct TYPE_2__ {int chan_id; } ;
struct mxs_dma_chan {int /*<<< orphan*/  status; TYPE_1__ chan; struct mxs_dma_engine* mxs_dma; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_IN_PROGRESS ; 
 scalar_t__ HW_APBHX_CHANNEL_CTRL ; 
 scalar_t__ HW_APBHX_CTRL0 ; 
 scalar_t__ STMP_OFFSET_REG_CLR ; 
 scalar_t__ FUNC0 (struct mxs_dma_engine*) ; 
 scalar_t__ FUNC1 (struct mxs_dma_engine*) ; 
 struct mxs_dma_chan* FUNC2 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct dma_chan *chan)
{
	struct mxs_dma_chan *mxs_chan = FUNC2(chan);
	struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;
	int chan_id = mxs_chan->chan.chan_id;

	/* unfreeze the channel */
	if (FUNC1(mxs_dma) && FUNC0(mxs_dma))
		FUNC3(1 << chan_id,
			mxs_dma->base + HW_APBHX_CTRL0 + STMP_OFFSET_REG_CLR);
	else
		FUNC3(1 << chan_id,
			mxs_dma->base + HW_APBHX_CHANNEL_CTRL + STMP_OFFSET_REG_CLR);

	mxs_chan->status = DMA_IN_PROGRESS;
	return 0;
}