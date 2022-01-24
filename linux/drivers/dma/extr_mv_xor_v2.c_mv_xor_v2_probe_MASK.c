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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_submit; } ;
struct mv_xor_v2_sw_desc {int idx; int /*<<< orphan*/  free_list; TYPE_2__ async_tx; } ;
struct TYPE_5__ {int /*<<< orphan*/  device_node; struct dma_device* device; } ;
struct dma_device {int max_xor; int /*<<< orphan*/  channels; int /*<<< orphan*/  device_prep_dma_xor; int /*<<< orphan*/  device_prep_dma_interrupt; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/ * dev; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  cap_mask; } ;
struct mv_xor_v2_device {int desc_size; void* reg_clk; void* clk; int /*<<< orphan*/  hw_desq; int /*<<< orphan*/  hw_desq_virt; TYPE_1__ dmachan; struct dma_device dmadev; int /*<<< orphan*/  free_sw_desc; struct mv_xor_v2_sw_desc* sw_desq; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_tasklet; struct msi_desc* msi_desc; void* glob_base; void* dma_base; } ;
struct mv_xor_v2_descriptor {int dummy; } ;
struct msi_desc {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DMA_INTERRUPT ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_XOR ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (void*) ; 
 int MV_XOR_V2_DESC_NUM ; 
 int MV_XOR_V2_EXT_DESC_SIZE ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC10 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC11 (int /*<<< orphan*/ *,struct resource*) ; 
 struct mv_xor_v2_sw_desc* FUNC12 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 struct mv_xor_v2_device* FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mv_xor_v2_device*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  dma_cookie_status ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct msi_desc* FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct mv_xor_v2_device*) ; 
 int /*<<< orphan*/  FUNC27 (struct mv_xor_v2_device*) ; 
 int /*<<< orphan*/  mv_xor_v2_interrupt_handler ; 
 int /*<<< orphan*/  mv_xor_v2_issue_pending ; 
 int /*<<< orphan*/  mv_xor_v2_prep_dma_interrupt ; 
 int /*<<< orphan*/  mv_xor_v2_prep_dma_memcpy ; 
 int /*<<< orphan*/  mv_xor_v2_prep_dma_xor ; 
 int FUNC28 (struct mv_xor_v2_device*) ; 
 int /*<<< orphan*/  mv_xor_v2_set_msi_msg ; 
 int /*<<< orphan*/  mv_xor_v2_tasklet ; 
 int /*<<< orphan*/  mv_xor_v2_tx_submit ; 
 struct resource* FUNC29 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC30 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (struct platform_device*,struct mv_xor_v2_device*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC35(struct platform_device *pdev)
{
	struct mv_xor_v2_device *xor_dev;
	struct resource *res;
	int i, ret = 0;
	struct dma_device *dma_dev;
	struct mv_xor_v2_sw_desc *sw_desc;
	struct msi_desc *msi_desc;

	FUNC0(sizeof(struct mv_xor_v2_descriptor) !=
		     MV_XOR_V2_EXT_DESC_SIZE);

	xor_dev = FUNC13(&pdev->dev, sizeof(*xor_dev), GFP_KERNEL);
	if (!xor_dev)
		return -ENOMEM;

	res = FUNC29(pdev, IORESOURCE_MEM, 0);
	xor_dev->dma_base = FUNC11(&pdev->dev, res);
	if (FUNC3(xor_dev->dma_base))
		return FUNC4(xor_dev->dma_base);

	res = FUNC29(pdev, IORESOURCE_MEM, 1);
	xor_dev->glob_base = FUNC11(&pdev->dev, res);
	if (FUNC3(xor_dev->glob_base))
		return FUNC4(xor_dev->glob_base);

	FUNC32(pdev, xor_dev);

	ret = FUNC22(&pdev->dev, FUNC1(40));
	if (ret)
		return ret;

	xor_dev->reg_clk = FUNC10(&pdev->dev, "reg");
	if (FUNC4(xor_dev->reg_clk) != -ENOENT) {
		if (!FUNC3(xor_dev->reg_clk)) {
			ret = FUNC7(xor_dev->reg_clk);
			if (ret)
				return ret;
		} else {
			return FUNC4(xor_dev->reg_clk);
		}
	}

	xor_dev->clk = FUNC10(&pdev->dev, NULL);
	if (FUNC3(xor_dev->clk) && FUNC4(xor_dev->clk) == -EPROBE_DEFER) {
		ret = EPROBE_DEFER;
		goto disable_reg_clk;
	}
	if (!FUNC3(xor_dev->clk)) {
		ret = FUNC7(xor_dev->clk);
		if (ret)
			goto disable_reg_clk;
	}

	ret = FUNC30(&pdev->dev, 1,
					     mv_xor_v2_set_msi_msg);
	if (ret)
		goto disable_clk;

	msi_desc = FUNC23(&pdev->dev);
	if (!msi_desc)
		goto free_msi_irqs;
	xor_dev->msi_desc = msi_desc;

	ret = FUNC14(&pdev->dev, msi_desc->irq,
			       mv_xor_v2_interrupt_handler, 0,
			       FUNC8(&pdev->dev), xor_dev);
	if (ret)
		goto free_msi_irqs;

	FUNC34(&xor_dev->irq_tasklet, mv_xor_v2_tasklet,
		     (unsigned long) xor_dev);

	xor_dev->desc_size = FUNC28(xor_dev);

	FUNC20(&xor_dev->dmachan);

	/*
	 * allocate coherent memory for hardware descriptors
	 * note: writecombine gives slightly better performance, but
	 * requires that we explicitly flush the writes
	 */
	xor_dev->hw_desq_virt =
		FUNC15(&pdev->dev,
				   xor_dev->desc_size * MV_XOR_V2_DESC_NUM,
				   &xor_dev->hw_desq, GFP_KERNEL);
	if (!xor_dev->hw_desq_virt) {
		ret = -ENOMEM;
		goto free_msi_irqs;
	}

	/* alloc memory for the SW descriptors */
	xor_dev->sw_desq = FUNC12(&pdev->dev,
					MV_XOR_V2_DESC_NUM, sizeof(*sw_desc),
					GFP_KERNEL);
	if (!xor_dev->sw_desq) {
		ret = -ENOMEM;
		goto free_hw_desq;
	}

	FUNC33(&xor_dev->lock);

	/* init the free SW descriptors list */
	FUNC2(&xor_dev->free_sw_desc);

	/* add all SW descriptors to the free list */
	for (i = 0; i < MV_XOR_V2_DESC_NUM; i++) {
		struct mv_xor_v2_sw_desc *sw_desc =
			xor_dev->sw_desq + i;
		sw_desc->idx = i;
		FUNC17(&sw_desc->async_tx,
					     &xor_dev->dmachan);
		sw_desc->async_tx.tx_submit = mv_xor_v2_tx_submit;
		FUNC5(&sw_desc->async_tx);

		FUNC24(&sw_desc->free_list,
			 &xor_dev->free_sw_desc);
	}

	dma_dev = &xor_dev->dmadev;

	/* set DMA capabilities */
	FUNC19(dma_dev->cap_mask);
	FUNC18(DMA_MEMCPY, dma_dev->cap_mask);
	FUNC18(DMA_XOR, dma_dev->cap_mask);
	FUNC18(DMA_INTERRUPT, dma_dev->cap_mask);

	/* init dma link list */
	FUNC2(&dma_dev->channels);

	/* set base routines */
	dma_dev->device_tx_status = dma_cookie_status;
	dma_dev->device_issue_pending = mv_xor_v2_issue_pending;
	dma_dev->dev = &pdev->dev;

	dma_dev->device_prep_dma_memcpy = mv_xor_v2_prep_dma_memcpy;
	dma_dev->device_prep_dma_interrupt = mv_xor_v2_prep_dma_interrupt;
	dma_dev->max_xor = 8;
	dma_dev->device_prep_dma_xor = mv_xor_v2_prep_dma_xor;

	xor_dev->dmachan.device = dma_dev;

	FUNC25(&xor_dev->dmachan.device_node,
		      &dma_dev->channels);

	FUNC27(xor_dev);

	FUNC26(xor_dev);

	ret = FUNC16(dma_dev);
	if (ret)
		goto free_hw_desq;

	FUNC9(&pdev->dev, "Marvell Version 2 XOR driver\n");

	return 0;

free_hw_desq:
	FUNC21(&pdev->dev,
			  xor_dev->desc_size * MV_XOR_V2_DESC_NUM,
			  xor_dev->hw_desq_virt, xor_dev->hw_desq);
free_msi_irqs:
	FUNC31(&pdev->dev);
disable_clk:
	FUNC6(xor_dev->clk);
disable_reg_clk:
	FUNC6(xor_dev->reg_clk);
	return ret;
}