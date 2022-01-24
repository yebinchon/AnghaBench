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
struct fsl_edma_chan {int /*<<< orphan*/ * tcd_pool; TYPE_1__ vchan; int /*<<< orphan*/ * edesc; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fsl_edma_chan*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fsl_edma_chan*) ; 
 int /*<<< orphan*/  FUNC4 (struct fsl_edma_chan*) ; 
 int /*<<< orphan*/  head ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct fsl_edma_chan* FUNC7 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

void FUNC10(struct dma_chan *chan)
{
	struct fsl_edma_chan *fsl_chan = FUNC7(chan);
	unsigned long flags;
	FUNC0(head);

	FUNC5(&fsl_chan->vchan.lock, flags);
	FUNC3(fsl_chan);
	FUNC2(fsl_chan, 0, false);
	fsl_chan->edesc = NULL;
	FUNC9(&fsl_chan->vchan, &head);
	FUNC4(fsl_chan);
	FUNC6(&fsl_chan->vchan.lock, flags);

	FUNC8(&fsl_chan->vchan, &head);
	FUNC1(fsl_chan->tcd_pool);
	fsl_chan->tcd_pool = NULL;
}