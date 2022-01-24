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
struct TYPE_3__ {int /*<<< orphan*/  device_node; struct dma_device* device; } ;
struct xgene_dma_chan {TYPE_1__ dma_chan; int /*<<< orphan*/  tasklet; int /*<<< orphan*/ * desc_pool; scalar_t__ pending; int /*<<< orphan*/  ld_completed; int /*<<< orphan*/  ld_running; int /*<<< orphan*/  ld_pending; int /*<<< orphan*/  lock; } ;
struct xgene_dma {int /*<<< orphan*/  dev; struct dma_device* dma_dev; struct xgene_dma_chan* chan; } ;
struct dma_device {int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_PQ ; 
 int /*<<< orphan*/  DMA_XOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xgene_dma_chan*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC3 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct xgene_dma_chan*,struct dma_device*) ; 
 int /*<<< orphan*/  xgene_dma_tasklet_cb ; 

__attribute__((used)) static int FUNC12(struct xgene_dma *pdma, int id)
{
	struct xgene_dma_chan *chan = &pdma->chan[id];
	struct dma_device *dma_dev = &pdma->dma_dev[id];
	int ret;

	chan->dma_chan.device = dma_dev;

	FUNC8(&chan->lock);
	FUNC0(&chan->ld_pending);
	FUNC0(&chan->ld_running);
	FUNC0(&chan->ld_completed);
	FUNC9(&chan->tasklet, xgene_dma_tasklet_cb,
		     (unsigned long)chan);

	chan->pending = 0;
	chan->desc_pool = NULL;
	FUNC5(&chan->dma_chan);

	/* Setup dma device capabilities and prep routines */
	FUNC11(chan, dma_dev);

	/* Initialize DMA device list head */
	FUNC0(&dma_dev->channels);
	FUNC7(&chan->dma_chan.device_node, &dma_dev->channels);

	/* Register with Linux async DMA framework*/
	ret = FUNC3(dma_dev);
	if (ret) {
		FUNC1(chan, "Failed to register async device %d", ret);
		FUNC10(&chan->tasklet);

		return ret;
	}

	/* DMA capability info */
	FUNC2(pdma->dev,
		 "%s: CAPABILITY ( %s%s)\n", FUNC4(&chan->dma_chan),
		 FUNC6(DMA_XOR, dma_dev->cap_mask) ? "XOR " : "",
		 FUNC6(DMA_PQ, dma_dev->cap_mask) ? "PQ " : "");

	return 0;
}