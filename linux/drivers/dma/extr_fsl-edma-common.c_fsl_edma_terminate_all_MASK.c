#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct fsl_edma_chan {int idle; TYPE_1__ vchan; int /*<<< orphan*/ * edesc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_edma_chan*) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fsl_edma_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 

int FUNC7(struct dma_chan *chan)
{
	struct fsl_edma_chan *fsl_chan = FUNC4(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC2(&fsl_chan->vchan.lock, flags);
	FUNC1(fsl_chan);
	fsl_chan->edesc = NULL;
	fsl_chan->idle = true;
	FUNC6(&fsl_chan->vchan, &head);
	FUNC3(&fsl_chan->vchan.lock, flags);
	FUNC5(&fsl_chan->vchan, &head);
	return 0;
}