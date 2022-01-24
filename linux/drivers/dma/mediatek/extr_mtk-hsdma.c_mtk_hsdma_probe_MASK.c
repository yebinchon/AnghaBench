#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct resource {int /*<<< orphan*/  start; } ;
struct TYPE_12__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct TYPE_11__ {int /*<<< orphan*/  desc_free; } ;
struct mtk_hsdma_vchan {int /*<<< orphan*/  desc_hw_processing; int /*<<< orphan*/  issue_completion; TYPE_1__ vc; } ;
struct dma_device {int /*<<< orphan*/  channels; TYPE_2__* dev; int /*<<< orphan*/  residue_granularity; int /*<<< orphan*/  directions; void* dst_addr_widths; void* src_addr_widths; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; int /*<<< orphan*/  copy_align; int /*<<< orphan*/  cap_mask; } ;
struct mtk_hsdma_device {int dma_requests; int /*<<< orphan*/  irq; struct mtk_hsdma_vchan* vc; void* pc; int /*<<< orphan*/  lock; int /*<<< orphan*/  pc_refcnt; int /*<<< orphan*/  clk; int /*<<< orphan*/  soc; int /*<<< orphan*/  base; struct dma_device ddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_MEM_TO_MEM ; 
 int /*<<< orphan*/  DMA_RESIDUE_GRANULARITY_SEGMENT ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MTK_HSDMA_ALIGN_SIZE ; 
 void* MTK_HSDMA_DMA_BUSWIDTHS ; 
 int MTK_HSDMA_NR_MAX_PCHANS ; 
 int MTK_HSDMA_NR_VCHANS ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*,...) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,struct resource*) ; 
 void* FUNC9 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct mtk_hsdma_device* FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct mtk_hsdma_device*) ; 
 int FUNC12 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mtk_hsdma_alloc_chan_resources ; 
 int /*<<< orphan*/  mtk_hsdma_free_chan_resources ; 
 int /*<<< orphan*/  FUNC16 (struct mtk_hsdma_device*) ; 
 int /*<<< orphan*/  mtk_hsdma_irq ; 
 int /*<<< orphan*/  mtk_hsdma_issue_pending ; 
 int /*<<< orphan*/  mtk_hsdma_prep_dma_memcpy ; 
 int /*<<< orphan*/  mtk_hsdma_terminate_all ; 
 int /*<<< orphan*/  mtk_hsdma_tx_status ; 
 int /*<<< orphan*/  mtk_hsdma_vdesc_free ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int FUNC18 (scalar_t__,int /*<<< orphan*/ ,struct mtk_hsdma_device*) ; 
 int /*<<< orphan*/  of_dma_xlate_by_chan_id ; 
 scalar_t__ FUNC19 (scalar_t__,char*,int*) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct mtk_hsdma_device*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,struct dma_device*) ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct mtk_hsdma_device *hsdma;
	struct mtk_hsdma_vchan *vc;
	struct dma_device *dd;
	struct resource *res;
	int i, err;

	hsdma = FUNC10(&pdev->dev, sizeof(*hsdma), GFP_KERNEL);
	if (!hsdma)
		return -ENOMEM;

	dd = &hsdma->ddev;

	res = FUNC20(pdev, IORESOURCE_MEM, 0);
	hsdma->base = FUNC8(&pdev->dev, res);
	if (FUNC2(hsdma->base))
		return FUNC3(hsdma->base);

	hsdma->soc = FUNC17(&pdev->dev);
	if (!hsdma->soc) {
		FUNC4(&pdev->dev, "No device match found\n");
		return -ENODEV;
	}

	hsdma->clk = FUNC7(&pdev->dev, "hsdma");
	if (FUNC2(hsdma->clk)) {
		FUNC4(&pdev->dev, "No clock for %s\n",
			FUNC6(&pdev->dev));
		return FUNC3(hsdma->clk);
	}

	res = FUNC20(pdev, IORESOURCE_IRQ, 0);
	if (!res) {
		FUNC4(&pdev->dev, "No irq resource for %s\n",
			FUNC6(&pdev->dev));
		return -EINVAL;
	}
	hsdma->irq = res->start;

	FUNC22(&hsdma->pc_refcnt, 0);
	FUNC23(&hsdma->lock);

	FUNC14(DMA_MEMCPY, dd->cap_mask);

	dd->copy_align = MTK_HSDMA_ALIGN_SIZE;
	dd->device_alloc_chan_resources = mtk_hsdma_alloc_chan_resources;
	dd->device_free_chan_resources = mtk_hsdma_free_chan_resources;
	dd->device_tx_status = mtk_hsdma_tx_status;
	dd->device_issue_pending = mtk_hsdma_issue_pending;
	dd->device_prep_dma_memcpy = mtk_hsdma_prep_dma_memcpy;
	dd->device_terminate_all = mtk_hsdma_terminate_all;
	dd->src_addr_widths = MTK_HSDMA_DMA_BUSWIDTHS;
	dd->dst_addr_widths = MTK_HSDMA_DMA_BUSWIDTHS;
	dd->directions = FUNC0(DMA_MEM_TO_MEM);
	dd->residue_granularity = DMA_RESIDUE_GRANULARITY_SEGMENT;
	dd->dev = &pdev->dev;
	FUNC1(&dd->channels);

	hsdma->dma_requests = MTK_HSDMA_NR_VCHANS;
	if (pdev->dev.of_node && FUNC19(pdev->dev.of_node,
						      "dma-requests",
						      &hsdma->dma_requests)) {
		FUNC5(&pdev->dev,
			 "Using %u as missing dma-requests property\n",
			 MTK_HSDMA_NR_VCHANS);
	}

	hsdma->pc = FUNC9(&pdev->dev, MTK_HSDMA_NR_MAX_PCHANS,
				 sizeof(*hsdma->pc), GFP_KERNEL);
	if (!hsdma->pc)
		return -ENOMEM;

	hsdma->vc = FUNC9(&pdev->dev, hsdma->dma_requests,
				 sizeof(*hsdma->vc), GFP_KERNEL);
	if (!hsdma->vc)
		return -ENOMEM;

	for (i = 0; i < hsdma->dma_requests; i++) {
		vc = &hsdma->vc[i];
		vc->vc.desc_free = mtk_hsdma_vdesc_free;
		FUNC24(&vc->vc, dd);
		FUNC15(&vc->issue_completion);
		FUNC1(&vc->desc_hw_processing);
	}

	err = FUNC12(dd);
	if (err)
		return err;

	err = FUNC18(pdev->dev.of_node,
					 of_dma_xlate_by_chan_id, hsdma);
	if (err) {
		FUNC4(&pdev->dev,
			"MediaTek HSDMA OF registration failed %d\n", err);
		goto err_unregister;
	}

	FUNC16(hsdma);

	err = FUNC11(&pdev->dev, hsdma->irq,
			       mtk_hsdma_irq, 0,
			       FUNC6(&pdev->dev), hsdma);
	if (err) {
		FUNC4(&pdev->dev,
			"request_irq failed with err %d\n", err);
		goto err_unregister;
	}

	FUNC21(pdev, hsdma);

	FUNC5(&pdev->dev, "MediaTek HSDMA driver registered\n");

	return 0;

err_unregister:
	FUNC13(dd);

	return err;
}