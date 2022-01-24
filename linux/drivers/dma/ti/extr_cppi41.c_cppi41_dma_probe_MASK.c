#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct cppi_glue_infos {int /*<<< orphan*/  first_completion_queue; int /*<<< orphan*/  qmgr_num_pend; int /*<<< orphan*/  td_queue; int /*<<< orphan*/  queues_tx; int /*<<< orphan*/  queues_rx; } ;
struct TYPE_6__ {int directions; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; struct device* dev; int /*<<< orphan*/  residue_granularity; void* dst_addr_widths; void* src_addr_widths; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; } ;
struct cppi41_dd {int irq; TYPE_2__ ddev; int /*<<< orphan*/  n_chans; int /*<<< orphan*/  first_completion_queue; int /*<<< orphan*/  qmgr_num_pend; int /*<<< orphan*/  td_queue; int /*<<< orphan*/  queues_tx; int /*<<< orphan*/  queues_rx; int /*<<< orphan*/  pending; int /*<<< orphan*/  lock; void* qmgr_mem; void* sched_mem; void* ctrl_mem; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_cap; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* CPPI41_DMA_BUSWIDTHS ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_RESIDUE_GRANULARITY_BURST ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 TYPE_1__ cpp41_dma_info ; 
 int FUNC4 (struct device*,struct cppi41_dd*) ; 
 int /*<<< orphan*/  cppi41_dma_alloc_chan_resources ; 
 int /*<<< orphan*/  cppi41_dma_free_chan_resources ; 
 int /*<<< orphan*/  cppi41_dma_issue_pending ; 
 int /*<<< orphan*/  cppi41_dma_prep_slave_sg ; 
 int /*<<< orphan*/  cppi41_dma_tx_status ; 
 int /*<<< orphan*/  cppi41_dma_xlate ; 
 int /*<<< orphan*/  cppi41_irq ; 
 int /*<<< orphan*/  cppi41_stop_chan ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct cppi41_dd*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 struct cppi41_dd* FUNC8 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cppi41_dd*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cppi_glue_infos* FUNC13 (struct device*) ; 
 int FUNC14 (struct device*,struct cppi41_dd*) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC17 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct cppi41_dd*) ; 
 int /*<<< orphan*/  FUNC21 (struct device*) ; 
 int /*<<< orphan*/  FUNC22 (struct device*) ; 
 int /*<<< orphan*/  FUNC23 (struct device*) ; 
 int FUNC24 (struct device*) ; 
 int /*<<< orphan*/  FUNC25 (struct device*) ; 
 int /*<<< orphan*/  FUNC26 (struct device*) ; 
 int /*<<< orphan*/  FUNC27 (struct device*) ; 
 int /*<<< orphan*/  FUNC28 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC29 (struct device*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC31(struct platform_device *pdev)
{
	struct cppi41_dd *cdd;
	struct device *dev = &pdev->dev;
	const struct cppi_glue_infos *glue_info;
	struct resource *mem;
	int index;
	int irq;
	int ret;

	glue_info = FUNC13(dev);
	if (!glue_info)
		return -EINVAL;

	cdd = FUNC8(&pdev->dev, sizeof(*cdd), GFP_KERNEL);
	if (!cdd)
		return -ENOMEM;

	FUNC12(DMA_SLAVE, cdd->ddev.cap_mask);
	cdd->ddev.device_alloc_chan_resources = cppi41_dma_alloc_chan_resources;
	cdd->ddev.device_free_chan_resources = cppi41_dma_free_chan_resources;
	cdd->ddev.device_tx_status = cppi41_dma_tx_status;
	cdd->ddev.device_issue_pending = cppi41_dma_issue_pending;
	cdd->ddev.device_prep_slave_sg = cppi41_dma_prep_slave_sg;
	cdd->ddev.device_terminate_all = cppi41_stop_chan;
	cdd->ddev.directions = FUNC0(DMA_DEV_TO_MEM) | FUNC0(DMA_MEM_TO_DEV);
	cdd->ddev.src_addr_widths = CPPI41_DMA_BUSWIDTHS;
	cdd->ddev.dst_addr_widths = CPPI41_DMA_BUSWIDTHS;
	cdd->ddev.residue_granularity = DMA_RESIDUE_GRANULARITY_BURST;
	cdd->ddev.dev = dev;
	FUNC1(&cdd->ddev.channels);
	cpp41_dma_info.dma_cap = cdd->ddev.cap_mask;

	index = FUNC17(dev->of_node,
					 "reg-names", "controller");
	if (index < 0)
		return index;

	mem = FUNC19(pdev, IORESOURCE_MEM, index);
	cdd->ctrl_mem = FUNC7(dev, mem);
	if (FUNC2(cdd->ctrl_mem))
		return FUNC3(cdd->ctrl_mem);

	mem = FUNC19(pdev, IORESOURCE_MEM, index + 1);
	cdd->sched_mem = FUNC7(dev, mem);
	if (FUNC2(cdd->sched_mem))
		return FUNC3(cdd->sched_mem);

	mem = FUNC19(pdev, IORESOURCE_MEM, index + 2);
	cdd->qmgr_mem = FUNC7(dev, mem);
	if (FUNC2(cdd->qmgr_mem))
		return FUNC3(cdd->qmgr_mem);

	FUNC30(&cdd->lock);
	FUNC1(&cdd->pending);

	FUNC20(pdev, cdd);

	FUNC23(dev);
	FUNC28(dev, 100);
	FUNC29(dev);
	ret = FUNC24(dev);
	if (ret < 0)
		goto err_get_sync;

	cdd->queues_rx = glue_info->queues_rx;
	cdd->queues_tx = glue_info->queues_tx;
	cdd->td_queue = glue_info->td_queue;
	cdd->qmgr_num_pend = glue_info->qmgr_num_pend;
	cdd->first_completion_queue = glue_info->first_completion_queue;

	ret = FUNC18(dev->of_node,
				   "#dma-channels", &cdd->n_chans);
	if (ret)
		goto err_get_n_chans;

	ret = FUNC14(dev, cdd);
	if (ret)
		goto err_init_cppi;

	ret = FUNC4(dev, cdd);
	if (ret)
		goto err_chans;

	irq = FUNC15(dev->of_node, 0);
	if (!irq) {
		ret = -EINVAL;
		goto err_chans;
	}

	ret = FUNC9(&pdev->dev, irq, cppi41_irq, IRQF_SHARED,
			FUNC6(dev), cdd);
	if (ret)
		goto err_chans;
	cdd->irq = irq;

	ret = FUNC10(&cdd->ddev);
	if (ret)
		goto err_chans;

	ret = FUNC16(dev->of_node,
			cppi41_dma_xlate, &cpp41_dma_info);
	if (ret)
		goto err_of;

	FUNC25(dev);
	FUNC26(dev);

	return 0;
err_of:
	FUNC11(&cdd->ddev);
err_chans:
	FUNC5(dev, cdd);
err_init_cppi:
	FUNC22(dev);
err_get_n_chans:
err_get_sync:
	FUNC27(dev);
	FUNC21(dev);
	return ret;
}