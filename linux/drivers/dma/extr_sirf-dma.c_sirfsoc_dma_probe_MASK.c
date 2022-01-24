#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
typedef  int /*<<< orphan*/  u32 ;
struct sirfsoc_dmadata {int /*<<< orphan*/  type; int /*<<< orphan*/  exec; } ;
struct TYPE_6__ {int /*<<< orphan*/  device_node; struct dma_device* device; } ;
struct sirfsoc_dma_chan {TYPE_3__ chan; int /*<<< orphan*/  lock; int /*<<< orphan*/  completed; int /*<<< orphan*/  active; int /*<<< orphan*/  queued; int /*<<< orphan*/  prepared; int /*<<< orphan*/  free; } ;
struct dma_device {int directions; int /*<<< orphan*/  channels; int /*<<< orphan*/  cap_mask; void* dst_addr_widths; void* src_addr_widths; int /*<<< orphan*/  device_prep_dma_cyclic; int /*<<< orphan*/  device_prep_interleaved_dma; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_resume; int /*<<< orphan*/  device_pause; int /*<<< orphan*/  device_config; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; struct device* dev; } ;
struct sirfsoc_dma {int /*<<< orphan*/  irq; int /*<<< orphan*/  tasklet; struct sirfsoc_dma_chan* channels; struct dma_device dma; int /*<<< orphan*/  base; int /*<<< orphan*/  clk; int /*<<< orphan*/  type; int /*<<< orphan*/  exec_desc; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {TYPE_1__* driver; struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_match_table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_CYCLIC ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_INTERLEAVE ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 void* SIRFSOC_DMA_BUSWIDTHS ; 
 int SIRFSOC_DMA_CHANNELS ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,struct sirfsoc_dma*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sirfsoc_dma* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct sirfsoc_dma*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC18 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 int FUNC19 (struct device_node*,int /*<<< orphan*/ ,struct sirfsoc_dma*) ; 
 int /*<<< orphan*/  of_dma_sirfsoc_xlate ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ ,struct device*) ; 
 scalar_t__ FUNC21 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sirfsoc_dma*) ; 
 int /*<<< orphan*/  FUNC24 (struct resource*) ; 
 int /*<<< orphan*/  sirfsoc_dma_alloc_chan_resources ; 
 int /*<<< orphan*/  sirfsoc_dma_free_chan_resources ; 
 int /*<<< orphan*/  sirfsoc_dma_irq ; 
 int /*<<< orphan*/  sirfsoc_dma_issue_pending ; 
 int /*<<< orphan*/  sirfsoc_dma_pause_chan ; 
 int /*<<< orphan*/  sirfsoc_dma_prep_cyclic ; 
 int /*<<< orphan*/  sirfsoc_dma_prep_interleaved ; 
 int /*<<< orphan*/  sirfsoc_dma_resume_chan ; 
 int /*<<< orphan*/  sirfsoc_dma_slave_config ; 
 int /*<<< orphan*/  sirfsoc_dma_tasklet ; 
 int /*<<< orphan*/  sirfsoc_dma_terminate_all ; 
 int /*<<< orphan*/  sirfsoc_dma_tx_status ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC27(struct platform_device *op)
{
	struct device_node *dn = op->dev.of_node;
	struct device *dev = &op->dev;
	struct dma_device *dma;
	struct sirfsoc_dma *sdma;
	struct sirfsoc_dma_chan *schan;
	struct sirfsoc_dmadata *data;
	struct resource res;
	ulong regs_start, regs_size;
	u32 id;
	int ret, i;

	sdma = FUNC9(dev, sizeof(*sdma), GFP_KERNEL);
	if (!sdma)
		return -ENOMEM;

	data = (struct sirfsoc_dmadata *)
		(FUNC20(op->dev.driver->of_match_table,
				 &op->dev)->data);
	sdma->exec_desc = data->exec;
	sdma->type = data->type;

	if (FUNC21(dn, "cell-index", &id)) {
		FUNC4(dev, "Fail to get DMAC index\n");
		return -ENODEV;
	}

	sdma->irq = FUNC16(dn, 0);
	if (!sdma->irq) {
		FUNC4(dev, "Error mapping IRQ!\n");
		return -EINVAL;
	}

	sdma->clk = FUNC7(dev, NULL);
	if (FUNC2(sdma->clk)) {
		FUNC4(dev, "failed to get a clock.\n");
		return FUNC3(sdma->clk);
	}

	ret = FUNC18(dn, 0, &res);
	if (ret) {
		FUNC4(dev, "Error parsing memory region!\n");
		goto irq_dispose;
	}

	regs_start = res.start;
	regs_size = FUNC24(&res);

	sdma->base = FUNC8(dev, regs_start, regs_size);
	if (!sdma->base) {
		FUNC4(dev, "Error mapping memory region!\n");
		ret = -ENOMEM;
		goto irq_dispose;
	}

	ret = FUNC23(sdma->irq, &sirfsoc_dma_irq, 0, DRV_NAME, sdma);
	if (ret) {
		FUNC4(dev, "Error requesting IRQ!\n");
		ret = -EINVAL;
		goto irq_dispose;
	}

	dma = &sdma->dma;
	dma->dev = dev;

	dma->device_alloc_chan_resources = sirfsoc_dma_alloc_chan_resources;
	dma->device_free_chan_resources = sirfsoc_dma_free_chan_resources;
	dma->device_issue_pending = sirfsoc_dma_issue_pending;
	dma->device_config = sirfsoc_dma_slave_config;
	dma->device_pause = sirfsoc_dma_pause_chan;
	dma->device_resume = sirfsoc_dma_resume_chan;
	dma->device_terminate_all = sirfsoc_dma_terminate_all;
	dma->device_tx_status = sirfsoc_dma_tx_status;
	dma->device_prep_interleaved_dma = sirfsoc_dma_prep_interleaved;
	dma->device_prep_dma_cyclic = sirfsoc_dma_prep_cyclic;
	dma->src_addr_widths = SIRFSOC_DMA_BUSWIDTHS;
	dma->dst_addr_widths = SIRFSOC_DMA_BUSWIDTHS;
	dma->directions = FUNC0(DMA_DEV_TO_MEM) | FUNC0(DMA_MEM_TO_DEV);

	FUNC1(&dma->channels);
	FUNC12(DMA_SLAVE, dma->cap_mask);
	FUNC12(DMA_CYCLIC, dma->cap_mask);
	FUNC12(DMA_INTERLEAVE, dma->cap_mask);
	FUNC12(DMA_PRIVATE, dma->cap_mask);

	for (i = 0; i < SIRFSOC_DMA_CHANNELS; i++) {
		schan = &sdma->channels[i];

		schan->chan.device = dma;
		FUNC13(&schan->chan);

		FUNC1(&schan->free);
		FUNC1(&schan->prepared);
		FUNC1(&schan->queued);
		FUNC1(&schan->active);
		FUNC1(&schan->completed);

		FUNC25(&schan->lock);
		FUNC17(&schan->chan.device_node, &dma->channels);
	}

	FUNC26(&sdma->tasklet, sirfsoc_dma_tasklet, (unsigned long)sdma);

	/* Register DMA engine */
	FUNC6(dev, sdma);

	ret = FUNC10(dma);
	if (ret)
		goto free_irq;

	/* Device-tree DMA controller registration */
	ret = FUNC19(dn, of_dma_sirfsoc_xlate, sdma);
	if (ret) {
		FUNC4(dev, "failed to register DMA controller\n");
		goto unreg_dma_dev;
	}

	FUNC22(&op->dev);
	FUNC5(dev, "initialized SIRFSOC DMAC driver\n");

	return 0;

unreg_dma_dev:
	FUNC11(dma);
free_irq:
	FUNC14(sdma->irq, sdma);
irq_dispose:
	FUNC15(sdma->irq);
	return ret;
}