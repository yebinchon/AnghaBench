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
struct dma_device {int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_resume; int /*<<< orphan*/  device_pause; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_prep_dma_interrupt; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  channels; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  residue_granularity; int /*<<< orphan*/  directions; void* dst_addr_widths; void* src_addr_widths; int /*<<< orphan*/  dev; } ;
struct dma_chan {int /*<<< orphan*/  device_node; struct dma_device* device; } ;
struct ccp_dma_desc {int dummy; } ;
struct ccp_dma_cmd {int dummy; } ;
struct ccp_dma_chan {int /*<<< orphan*/  cleanup_tasklet; int /*<<< orphan*/  complete; int /*<<< orphan*/  active; int /*<<< orphan*/  pending; int /*<<< orphan*/  created; int /*<<< orphan*/  lock; struct ccp_device* ccp; struct dma_chan dma_chan; } ;
struct ccp_device {unsigned int cmd_q_count; void* dma_cmd_cache; void* dma_desc_cache; struct ccp_dma_chan* ccp_dma_chan; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; struct dma_device dma_dev; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ DMA_INTERRUPT ; 
 scalar_t__ DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_MEM_TO_MEM ; 
 scalar_t__ DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_RESIDUE_GRANULARITY_DESCRIPTOR ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  ccp_do_cleanup ; 
 int /*<<< orphan*/  ccp_free_chan_resources ; 
 scalar_t__ FUNC2 (struct ccp_device*) ; 
 int /*<<< orphan*/  ccp_issue_pending ; 
 int /*<<< orphan*/  ccp_pause ; 
 int /*<<< orphan*/  ccp_prep_dma_interrupt ; 
 int /*<<< orphan*/  ccp_prep_dma_memcpy ; 
 int /*<<< orphan*/  ccp_resume ; 
 int /*<<< orphan*/  ccp_terminate_all ; 
 int /*<<< orphan*/  ccp_tx_status ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct ccp_dma_chan* FUNC4 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmaengine ; 
 void* FUNC9 (char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

int FUNC14(struct ccp_device *ccp)
{
	struct ccp_dma_chan *chan;
	struct dma_device *dma_dev = &ccp->dma_dev;
	struct dma_chan *dma_chan;
	char *dma_cmd_cache_name;
	char *dma_desc_cache_name;
	unsigned int i;
	int ret;

	if (!dmaengine)
		return 0;

	ccp->ccp_dma_chan = FUNC4(ccp->dev, ccp->cmd_q_count,
					 sizeof(*(ccp->ccp_dma_chan)),
					 GFP_KERNEL);
	if (!ccp->ccp_dma_chan)
		return -ENOMEM;

	dma_cmd_cache_name = FUNC3(ccp->dev, GFP_KERNEL,
					    "%s-dmaengine-cmd-cache",
					    ccp->name);
	if (!dma_cmd_cache_name)
		return -ENOMEM;

	ccp->dma_cmd_cache = FUNC9(dma_cmd_cache_name,
					       sizeof(struct ccp_dma_cmd),
					       sizeof(void *),
					       SLAB_HWCACHE_ALIGN, NULL);
	if (!ccp->dma_cmd_cache)
		return -ENOMEM;

	dma_desc_cache_name = FUNC3(ccp->dev, GFP_KERNEL,
					     "%s-dmaengine-desc-cache",
					     ccp->name);
	if (!dma_desc_cache_name) {
		ret = -ENOMEM;
		goto err_cache;
	}

	ccp->dma_desc_cache = FUNC9(dma_desc_cache_name,
						sizeof(struct ccp_dma_desc),
						sizeof(void *),
						SLAB_HWCACHE_ALIGN, NULL);
	if (!ccp->dma_desc_cache) {
		ret = -ENOMEM;
		goto err_cache;
	}

	dma_dev->dev = ccp->dev;
	dma_dev->src_addr_widths = FUNC0(FUNC8(ccp->dev));
	dma_dev->dst_addr_widths = FUNC0(FUNC8(ccp->dev));
	dma_dev->directions = DMA_MEM_TO_MEM;
	dma_dev->residue_granularity = DMA_RESIDUE_GRANULARITY_DESCRIPTOR;
	FUNC6(DMA_MEMCPY, dma_dev->cap_mask);
	FUNC6(DMA_INTERRUPT, dma_dev->cap_mask);

	/* The DMA channels for this device can be set to public or private,
	 * and overridden by the module parameter dma_chan_attr.
	 * Default: according to the value in vdata (dma_chan_attr=0)
	 * dma_chan_attr=0x1: all channels private (override vdata)
	 * dma_chan_attr=0x2: all channels public (override vdata)
	 */
	if (FUNC2(ccp) == DMA_PRIVATE)
		FUNC6(DMA_PRIVATE, dma_dev->cap_mask);

	FUNC1(&dma_dev->channels);
	for (i = 0; i < ccp->cmd_q_count; i++) {
		chan = ccp->ccp_dma_chan + i;
		dma_chan = &chan->dma_chan;

		chan->ccp = ccp;

		FUNC12(&chan->lock);
		FUNC1(&chan->created);
		FUNC1(&chan->pending);
		FUNC1(&chan->active);
		FUNC1(&chan->complete);

		FUNC13(&chan->cleanup_tasklet, ccp_do_cleanup,
			     (unsigned long)chan);

		dma_chan->device = dma_dev;
		FUNC7(dma_chan);

		FUNC11(&dma_chan->device_node, &dma_dev->channels);
	}

	dma_dev->device_free_chan_resources = ccp_free_chan_resources;
	dma_dev->device_prep_dma_memcpy = ccp_prep_dma_memcpy;
	dma_dev->device_prep_dma_interrupt = ccp_prep_dma_interrupt;
	dma_dev->device_issue_pending = ccp_issue_pending;
	dma_dev->device_tx_status = ccp_tx_status;
	dma_dev->device_pause = ccp_pause;
	dma_dev->device_resume = ccp_resume;
	dma_dev->device_terminate_all = ccp_terminate_all;

	ret = FUNC5(dma_dev);
	if (ret)
		goto err_reg;

	return 0;

err_reg:
	FUNC10(ccp->dma_desc_cache);

err_cache:
	FUNC10(ccp->dma_cmd_cache);

	return ret;
}