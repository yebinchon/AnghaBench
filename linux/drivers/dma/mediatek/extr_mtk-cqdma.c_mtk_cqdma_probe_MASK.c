#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_13__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct TYPE_12__ {int /*<<< orphan*/  desc_free; } ;
struct mtk_cqdma_vchan {int /*<<< orphan*/  issue_completion; TYPE_2__ vc; } ;
struct dma_device {int /*<<< orphan*/  channels; TYPE_3__* dev; int /*<<< orphan*/  residue_granularity; int /*<<< orphan*/  directions; void* dst_addr_widths; void* src_addr_widths; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; int /*<<< orphan*/  copy_align; int /*<<< orphan*/  cap_mask; } ;
struct mtk_cqdma_device {int dma_requests; int dma_channels; TYPE_1__** pc; struct mtk_cqdma_vchan* vc; int /*<<< orphan*/  clk; struct dma_device ddev; } ;
struct TYPE_11__ {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  irq; int /*<<< orphan*/  base; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_MEM_TO_MEM ; 
 int /*<<< orphan*/  DMA_RESIDUE_GRANULARITY_SEGMENT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_CQDMA_ALIGN_SIZE ; 
 void* MTK_CQDMA_DMA_BUSWIDTHS ; 
 int MTK_CQDMA_NR_PCHANS ; 
 int MTK_CQDMA_NR_VCHANS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*,...) ; 
 int FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,struct resource*) ; 
 void* FUNC9 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 struct mtk_cqdma_device* FUNC10 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct mtk_cqdma_device*) ; 
 int FUNC12 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_cqdma_alloc_chan_resources ; 
 int /*<<< orphan*/  mtk_cqdma_free_chan_resources ; 
 int FUNC16 (struct mtk_cqdma_device*) ; 
 int /*<<< orphan*/  mtk_cqdma_irq ; 
 int /*<<< orphan*/  mtk_cqdma_issue_pending ; 
 int /*<<< orphan*/  mtk_cqdma_prep_dma_memcpy ; 
 int /*<<< orphan*/  mtk_cqdma_tasklet_cb ; 
 int /*<<< orphan*/  mtk_cqdma_terminate_all ; 
 int /*<<< orphan*/  mtk_cqdma_tx_status ; 
 int /*<<< orphan*/  mtk_cqdma_vdesc_free ; 
 int FUNC17 (scalar_t__,int /*<<< orphan*/ ,struct mtk_cqdma_device*) ; 
 int /*<<< orphan*/  of_dma_xlate_by_chan_id ; 
 scalar_t__ FUNC18 (scalar_t__,char*,int*) ; 
 struct resource* FUNC19 (struct platform_device*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC20 (struct platform_device*,struct mtk_cqdma_device*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,struct dma_device*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct mtk_cqdma_device *cqdma;
	struct mtk_cqdma_vchan *vc;
	struct dma_device *dd;
	struct resource *res;
	int err;
	u32 i;

	cqdma = FUNC10(&pdev->dev, sizeof(*cqdma), GFP_KERNEL);
	if (!cqdma)
		return -ENOMEM;

	dd = &cqdma->ddev;

	cqdma->clk = FUNC7(&pdev->dev, "cqdma");
	if (FUNC2(cqdma->clk)) {
		FUNC4(&pdev->dev, "No clock for %s\n",
			FUNC6(&pdev->dev));
		return FUNC3(cqdma->clk);
	}

	FUNC14(DMA_MEMCPY, dd->cap_mask);

	dd->copy_align = MTK_CQDMA_ALIGN_SIZE;
	dd->device_alloc_chan_resources = mtk_cqdma_alloc_chan_resources;
	dd->device_free_chan_resources = mtk_cqdma_free_chan_resources;
	dd->device_tx_status = mtk_cqdma_tx_status;
	dd->device_issue_pending = mtk_cqdma_issue_pending;
	dd->device_prep_dma_memcpy = mtk_cqdma_prep_dma_memcpy;
	dd->device_terminate_all = mtk_cqdma_terminate_all;
	dd->src_addr_widths = MTK_CQDMA_DMA_BUSWIDTHS;
	dd->dst_addr_widths = MTK_CQDMA_DMA_BUSWIDTHS;
	dd->directions = FUNC0(DMA_MEM_TO_MEM);
	dd->residue_granularity = DMA_RESIDUE_GRANULARITY_SEGMENT;
	dd->dev = &pdev->dev;
	FUNC1(&dd->channels);

	if (pdev->dev.of_node && FUNC18(pdev->dev.of_node,
						      "dma-requests",
						      &cqdma->dma_requests)) {
		FUNC5(&pdev->dev,
			 "Using %u as missing dma-requests property\n",
			 MTK_CQDMA_NR_VCHANS);

		cqdma->dma_requests = MTK_CQDMA_NR_VCHANS;
	}

	if (pdev->dev.of_node && FUNC18(pdev->dev.of_node,
						      "dma-channels",
						      &cqdma->dma_channels)) {
		FUNC5(&pdev->dev,
			 "Using %u as missing dma-channels property\n",
			 MTK_CQDMA_NR_PCHANS);

		cqdma->dma_channels = MTK_CQDMA_NR_PCHANS;
	}

	cqdma->pc = FUNC9(&pdev->dev, cqdma->dma_channels,
				 sizeof(*cqdma->pc), GFP_KERNEL);
	if (!cqdma->pc)
		return -ENOMEM;

	/* initialization for PCs */
	for (i = 0; i < cqdma->dma_channels; ++i) {
		cqdma->pc[i] = FUNC9(&pdev->dev, 1,
					    sizeof(**cqdma->pc), GFP_KERNEL);
		if (!cqdma->pc[i])
			return -ENOMEM;

		FUNC1(&cqdma->pc[i]->queue);
		FUNC22(&cqdma->pc[i]->lock);
		FUNC21(&cqdma->pc[i]->refcnt, 0);

		res = FUNC19(pdev, IORESOURCE_MEM, i);
		if (!res) {
			FUNC4(&pdev->dev, "No mem resource for %s\n",
				FUNC6(&pdev->dev));
			return -EINVAL;
		}

		cqdma->pc[i]->base = FUNC8(&pdev->dev, res);
		if (FUNC2(cqdma->pc[i]->base))
			return FUNC3(cqdma->pc[i]->base);

		/* allocate IRQ resource */
		res = FUNC19(pdev, IORESOURCE_IRQ, i);
		if (!res) {
			FUNC4(&pdev->dev, "No irq resource for %s\n",
				FUNC6(&pdev->dev));
			return -EINVAL;
		}
		cqdma->pc[i]->irq = res->start;

		err = FUNC11(&pdev->dev, cqdma->pc[i]->irq,
				       mtk_cqdma_irq, 0, FUNC6(&pdev->dev),
				       cqdma);
		if (err) {
			FUNC4(&pdev->dev,
				"request_irq failed with err %d\n", err);
			return -EINVAL;
		}
	}

	/* allocate resource for VCs */
	cqdma->vc = FUNC9(&pdev->dev, cqdma->dma_requests,
				 sizeof(*cqdma->vc), GFP_KERNEL);
	if (!cqdma->vc)
		return -ENOMEM;

	for (i = 0; i < cqdma->dma_requests; i++) {
		vc = &cqdma->vc[i];
		vc->vc.desc_free = mtk_cqdma_vdesc_free;
		FUNC24(&vc->vc, dd);
		FUNC15(&vc->issue_completion);
	}

	err = FUNC12(dd);
	if (err)
		return err;

	err = FUNC17(pdev->dev.of_node,
					 of_dma_xlate_by_chan_id, cqdma);
	if (err) {
		FUNC4(&pdev->dev,
			"MediaTek CQDMA OF registration failed %d\n", err);
		goto err_unregister;
	}

	err = FUNC16(cqdma);
	if (err) {
		FUNC4(&pdev->dev,
			"MediaTek CQDMA HW initialization failed %d\n", err);
		goto err_unregister;
	}

	FUNC20(pdev, cqdma);

	/* initialize tasklet for each PC */
	for (i = 0; i < cqdma->dma_channels; ++i)
		FUNC23(&cqdma->pc[i]->tasklet, mtk_cqdma_tasklet_cb,
			     (unsigned long)cqdma->pc[i]);

	FUNC5(&pdev->dev, "MediaTek CQDMA driver registered\n");

	return 0;

err_unregister:
	FUNC13(dd);

	return err;
}