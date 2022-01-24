#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  desc_free; } ;
struct sun6i_vchan {TYPE_1__ vc; int /*<<< orphan*/  node; } ;
struct sun6i_pchan {int idx; void* base; } ;
struct sun6i_dma_lli {int dummy; } ;
struct TYPE_19__ {int directions; TYPE_4__* dev; int /*<<< orphan*/  residue_granularity; int /*<<< orphan*/  dst_addr_widths; int /*<<< orphan*/  src_addr_widths; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_resume; int /*<<< orphan*/  device_pause; int /*<<< orphan*/  device_config; int /*<<< orphan*/  copy_align; int /*<<< orphan*/  device_prep_dma_cyclic; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  channels; int /*<<< orphan*/  cap_mask; } ;
struct sun6i_dma_dev {scalar_t__ irq; int num_pchans; int num_vchans; int max_request; void* rstc; void* clk; void* clk_mbus; TYPE_2__ slave; TYPE_3__* cfg; struct sun6i_vchan* vchans; void* base; struct sun6i_pchan* pchans; int /*<<< orphan*/  task; int /*<<< orphan*/  lock; int /*<<< orphan*/  pending; int /*<<< orphan*/  pool; } ;
struct resource {int dummy; } ;
struct TYPE_21__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_20__ {int nr_max_channels; int nr_max_vchans; int nr_max_requests; int /*<<< orphan*/  (* clock_autogate_enable ) (struct sun6i_dma_dev*) ;scalar_t__ has_mbus_clk; int /*<<< orphan*/  dst_addr_widths; int /*<<< orphan*/  src_addr_widths; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMAENGINE_ALIGN_4_BYTES ; 
 int DMA_CHAN_MAX_DRQ_A31 ; 
 int /*<<< orphan*/  DMA_CYCLIC ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_RESIDUE_GRANULARITY_BURST ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (void*) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*) ; 
 void* FUNC10 (TYPE_4__*,char*) ; 
 void* FUNC11 (TYPE_4__*,struct resource*) ; 
 void* FUNC12 (TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 struct sun6i_dma_dev* FUNC13 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sun6i_dma_dev*) ; 
 void* FUNC15 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_4__*,int,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC20 (TYPE_4__*) ; 
 int FUNC21 (struct device_node*,int /*<<< orphan*/ ,struct sun6i_dma_dev*) ; 
 int FUNC22 (struct device_node*,char*,int*) ; 
 scalar_t__ FUNC23 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct sun6i_dma_dev*) ; 
 int /*<<< orphan*/  FUNC26 (void*) ; 
 int FUNC27 (void*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct sun6i_dma_dev*) ; 
 int /*<<< orphan*/  sun6i_dma_config ; 
 int /*<<< orphan*/  FUNC30 (struct sun6i_dma_dev*) ; 
 int /*<<< orphan*/  sun6i_dma_free_chan_resources ; 
 int /*<<< orphan*/  sun6i_dma_free_desc ; 
 int /*<<< orphan*/  sun6i_dma_interrupt ; 
 int /*<<< orphan*/  sun6i_dma_issue_pending ; 
 int /*<<< orphan*/  sun6i_dma_of_xlate ; 
 int /*<<< orphan*/  sun6i_dma_pause ; 
 int /*<<< orphan*/  sun6i_dma_prep_dma_cyclic ; 
 int /*<<< orphan*/  sun6i_dma_prep_dma_memcpy ; 
 int /*<<< orphan*/  sun6i_dma_prep_slave_sg ; 
 int /*<<< orphan*/  sun6i_dma_resume ; 
 int /*<<< orphan*/  sun6i_dma_tasklet ; 
 int /*<<< orphan*/  sun6i_dma_terminate_all ; 
 int /*<<< orphan*/  sun6i_dma_tx_status ; 
 int /*<<< orphan*/  FUNC31 (struct sun6i_dma_dev*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC34(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct sun6i_dma_dev *sdc;
	struct resource *res;
	int ret, i;

	sdc = FUNC13(&pdev->dev, sizeof(*sdc), GFP_KERNEL);
	if (!sdc)
		return -ENOMEM;

	sdc->cfg = FUNC20(&pdev->dev);
	if (!sdc->cfg)
		return -ENODEV;

	res = FUNC24(pdev, IORESOURCE_MEM, 0);
	sdc->base = FUNC11(&pdev->dev, res);
	if (FUNC2(sdc->base))
		return FUNC3(sdc->base);

	sdc->irq = FUNC23(pdev, 0);
	if (sdc->irq < 0)
		return sdc->irq;

	sdc->clk = FUNC10(&pdev->dev, NULL);
	if (FUNC2(sdc->clk)) {
		FUNC6(&pdev->dev, "No clock specified\n");
		return FUNC3(sdc->clk);
	}

	if (sdc->cfg->has_mbus_clk) {
		sdc->clk_mbus = FUNC10(&pdev->dev, "mbus");
		if (FUNC2(sdc->clk_mbus)) {
			FUNC6(&pdev->dev, "No mbus clock specified\n");
			return FUNC3(sdc->clk_mbus);
		}
	}

	sdc->rstc = FUNC15(&pdev->dev, NULL);
	if (FUNC2(sdc->rstc)) {
		FUNC6(&pdev->dev, "No reset controller specified\n");
		return FUNC3(sdc->rstc);
	}

	sdc->pool = FUNC19(FUNC8(&pdev->dev), &pdev->dev,
				     sizeof(struct sun6i_dma_lli), 4, 0);
	if (!sdc->pool) {
		FUNC6(&pdev->dev, "No memory for descriptors dma pool\n");
		return -ENOMEM;
	}

	FUNC25(pdev, sdc);
	FUNC1(&sdc->pending);
	FUNC28(&sdc->lock);

	FUNC18(DMA_PRIVATE, sdc->slave.cap_mask);
	FUNC18(DMA_MEMCPY, sdc->slave.cap_mask);
	FUNC18(DMA_SLAVE, sdc->slave.cap_mask);
	FUNC18(DMA_CYCLIC, sdc->slave.cap_mask);

	FUNC1(&sdc->slave.channels);
	sdc->slave.device_free_chan_resources	= sun6i_dma_free_chan_resources;
	sdc->slave.device_tx_status		= sun6i_dma_tx_status;
	sdc->slave.device_issue_pending		= sun6i_dma_issue_pending;
	sdc->slave.device_prep_slave_sg		= sun6i_dma_prep_slave_sg;
	sdc->slave.device_prep_dma_memcpy	= sun6i_dma_prep_dma_memcpy;
	sdc->slave.device_prep_dma_cyclic	= sun6i_dma_prep_dma_cyclic;
	sdc->slave.copy_align			= DMAENGINE_ALIGN_4_BYTES;
	sdc->slave.device_config		= sun6i_dma_config;
	sdc->slave.device_pause			= sun6i_dma_pause;
	sdc->slave.device_resume		= sun6i_dma_resume;
	sdc->slave.device_terminate_all		= sun6i_dma_terminate_all;
	sdc->slave.src_addr_widths		= sdc->cfg->src_addr_widths;
	sdc->slave.dst_addr_widths		= sdc->cfg->dst_addr_widths;
	sdc->slave.directions			= FUNC0(DMA_DEV_TO_MEM) |
						  FUNC0(DMA_MEM_TO_DEV);
	sdc->slave.residue_granularity		= DMA_RESIDUE_GRANULARITY_BURST;
	sdc->slave.dev = &pdev->dev;

	sdc->num_pchans = sdc->cfg->nr_max_channels;
	sdc->num_vchans = sdc->cfg->nr_max_vchans;
	sdc->max_request = sdc->cfg->nr_max_requests;

	ret = FUNC22(np, "dma-channels", &sdc->num_pchans);
	if (ret && !sdc->num_pchans) {
		FUNC6(&pdev->dev, "Can't get dma-channels.\n");
		return ret;
	}

	ret = FUNC22(np, "dma-requests", &sdc->max_request);
	if (ret && !sdc->max_request) {
		FUNC7(&pdev->dev, "Missing dma-requests, using %u.\n",
			 DMA_CHAN_MAX_DRQ_A31);
		sdc->max_request = DMA_CHAN_MAX_DRQ_A31;
	}

	/*
	 * If the number of vchans is not specified, derive it from the
	 * highest port number, at most one channel per port and direction.
	 */
	if (!sdc->num_vchans)
		sdc->num_vchans = 2 * (sdc->max_request + 1);

	sdc->pchans = FUNC12(&pdev->dev, sdc->num_pchans,
				   sizeof(struct sun6i_pchan), GFP_KERNEL);
	if (!sdc->pchans)
		return -ENOMEM;

	sdc->vchans = FUNC12(&pdev->dev, sdc->num_vchans,
				   sizeof(struct sun6i_vchan), GFP_KERNEL);
	if (!sdc->vchans)
		return -ENOMEM;

	FUNC32(&sdc->task, sun6i_dma_tasklet, (unsigned long)sdc);

	for (i = 0; i < sdc->num_pchans; i++) {
		struct sun6i_pchan *pchan = &sdc->pchans[i];

		pchan->idx = i;
		pchan->base = sdc->base + 0x100 + i * 0x40;
	}

	for (i = 0; i < sdc->num_vchans; i++) {
		struct sun6i_vchan *vchan = &sdc->vchans[i];

		FUNC1(&vchan->node);
		vchan->vc.desc_free = sun6i_dma_free_desc;
		FUNC33(&vchan->vc, &sdc->slave);
	}

	ret = FUNC27(sdc->rstc);
	if (ret) {
		FUNC6(&pdev->dev, "Couldn't deassert the device from reset\n");
		goto err_chan_free;
	}

	ret = FUNC5(sdc->clk);
	if (ret) {
		FUNC6(&pdev->dev, "Couldn't enable the clock\n");
		goto err_reset_assert;
	}

	if (sdc->cfg->has_mbus_clk) {
		ret = FUNC5(sdc->clk_mbus);
		if (ret) {
			FUNC6(&pdev->dev, "Couldn't enable mbus clock\n");
			goto err_clk_disable;
		}
	}

	ret = FUNC14(&pdev->dev, sdc->irq, sun6i_dma_interrupt, 0,
			       FUNC8(&pdev->dev), sdc);
	if (ret) {
		FUNC6(&pdev->dev, "Cannot request IRQ\n");
		goto err_mbus_clk_disable;
	}

	ret = FUNC16(&sdc->slave);
	if (ret) {
		FUNC9(&pdev->dev, "Failed to register DMA engine device\n");
		goto err_irq_disable;
	}

	ret = FUNC21(pdev->dev.of_node, sun6i_dma_of_xlate,
					 sdc);
	if (ret) {
		FUNC6(&pdev->dev, "of_dma_controller_register failed\n");
		goto err_dma_unregister;
	}

	if (sdc->cfg->clock_autogate_enable)
		sdc->cfg->clock_autogate_enable(sdc);

	return 0;

err_dma_unregister:
	FUNC17(&sdc->slave);
err_irq_disable:
	FUNC31(sdc);
err_mbus_clk_disable:
	FUNC4(sdc->clk_mbus);
err_clk_disable:
	FUNC4(sdc->clk);
err_reset_assert:
	FUNC26(sdc->rstc);
err_chan_free:
	FUNC30(sdc);
	return ret;
}