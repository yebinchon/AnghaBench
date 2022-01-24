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
struct xgene_dma_chan {int /*<<< orphan*/ * desc_pool; int /*<<< orphan*/  lock; int /*<<< orphan*/  ld_completed; int /*<<< orphan*/  ld_running; int /*<<< orphan*/  ld_pending; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xgene_dma_chan*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct xgene_dma_chan* FUNC4 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgene_dma_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgene_dma_chan*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct dma_chan *dchan)
{
	struct xgene_dma_chan *chan = FUNC4(dchan);

	FUNC0(chan, "Free all resources\n");

	if (!chan->desc_pool)
		return;

	/* Process all running descriptor */
	FUNC5(chan);

	FUNC2(&chan->lock);

	/* Clean all link descriptor queues */
	FUNC6(chan, &chan->ld_pending);
	FUNC6(chan, &chan->ld_running);
	FUNC6(chan, &chan->ld_completed);

	FUNC3(&chan->lock);

	/* Delete this channel DMA pool */
	FUNC1(chan->desc_pool);
	chan->desc_pool = NULL;
}