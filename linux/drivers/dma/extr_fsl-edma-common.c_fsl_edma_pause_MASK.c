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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct fsl_edma_chan {int idle; TYPE_1__ vchan; int /*<<< orphan*/  status; scalar_t__ edesc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PAUSED ; 
 int /*<<< orphan*/  FUNC0 (struct fsl_edma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fsl_edma_chan* FUNC3 (struct dma_chan*) ; 

int FUNC4(struct dma_chan *chan)
{
	struct fsl_edma_chan *fsl_chan = FUNC3(chan);
	unsigned long flags;

	FUNC1(&fsl_chan->vchan.lock, flags);
	if (fsl_chan->edesc) {
		FUNC0(fsl_chan);
		fsl_chan->status = DMA_PAUSED;
		fsl_chan->idle = true;
	}
	FUNC2(&fsl_chan->vchan.lock, flags);
	return 0;
}