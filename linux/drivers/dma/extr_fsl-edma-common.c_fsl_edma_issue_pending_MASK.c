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
struct fsl_edma_chan {scalar_t__ pm_state; TYPE_1__ vchan; int /*<<< orphan*/  edesc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 scalar_t__ RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct fsl_edma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fsl_edma_chan* FUNC3 (struct dma_chan*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 

void FUNC6(struct dma_chan *chan)
{
	struct fsl_edma_chan *fsl_chan = FUNC3(chan);
	unsigned long flags;

	FUNC1(&fsl_chan->vchan.lock, flags);

	if (FUNC4(fsl_chan->pm_state != RUNNING)) {
		FUNC2(&fsl_chan->vchan.lock, flags);
		/* cannot submit due to suspend */
		return;
	}

	if (FUNC5(&fsl_chan->vchan) && !fsl_chan->edesc)
		FUNC0(fsl_chan);

	FUNC2(&fsl_chan->vchan.lock, flags);
}