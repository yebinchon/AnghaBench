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
struct dma_device {int directions; int /*<<< orphan*/  channels; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_synchronize; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  residue_granularity; void* dst_addr_widths; void* src_addr_widths; int /*<<< orphan*/  cap_mask; struct device* dev; } ;
struct uniphier_mdmac_device {int /*<<< orphan*/  clk; struct dma_device ddev; int /*<<< orphan*/  reg_base; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_RESIDUE_GRANULARITY_SEGMENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 void* UNIPHIER_MDMAC_SLAVE_BUSWIDTHS ; 
 int /*<<< orphan*/  channels ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct resource*) ; 
 struct uniphier_mdmac_device* FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct device*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dma_device*) ; 
 int /*<<< orphan*/  of_dma_xlate_by_chan_id ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC17 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct platform_device*,struct uniphier_mdmac_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct uniphier_mdmac_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC20 (struct platform_device*,struct uniphier_mdmac_device*,int) ; 
 int /*<<< orphan*/  uniphier_mdmac_free_chan_resources ; 
 int /*<<< orphan*/  uniphier_mdmac_issue_pending ; 
 int /*<<< orphan*/  uniphier_mdmac_prep_slave_sg ; 
 int /*<<< orphan*/  uniphier_mdmac_synchronize ; 
 int /*<<< orphan*/  uniphier_mdmac_terminate_all ; 
 int /*<<< orphan*/  uniphier_mdmac_tx_status ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct uniphier_mdmac_device *mdev;
	struct dma_device *ddev;
	struct resource *res;
	int nr_chans, ret, i;

	nr_chans = FUNC17(pdev);
	if (nr_chans < 0)
		return nr_chans;

	ret = FUNC14(dev, FUNC1(32));
	if (ret)
		return ret;

	mdev = FUNC10(dev, FUNC19(mdev, channels, nr_chans),
			    GFP_KERNEL);
	if (!mdev)
		return -ENOMEM;

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	mdev->reg_base = FUNC9(dev, res);
	if (FUNC3(mdev->reg_base))
		return FUNC4(mdev->reg_base);

	mdev->clk = FUNC8(dev, NULL);
	if (FUNC3(mdev->clk)) {
		FUNC7(dev, "failed to get clock\n");
		return FUNC4(mdev->clk);
	}

	ret = FUNC6(mdev->clk);
	if (ret)
		return ret;

	ddev = &mdev->ddev;
	ddev->dev = dev;
	FUNC13(DMA_PRIVATE, ddev->cap_mask);
	ddev->src_addr_widths = UNIPHIER_MDMAC_SLAVE_BUSWIDTHS;
	ddev->dst_addr_widths = UNIPHIER_MDMAC_SLAVE_BUSWIDTHS;
	ddev->directions = FUNC0(DMA_MEM_TO_DEV) | FUNC0(DMA_DEV_TO_MEM);
	ddev->residue_granularity = DMA_RESIDUE_GRANULARITY_SEGMENT;
	ddev->device_free_chan_resources = uniphier_mdmac_free_chan_resources;
	ddev->device_prep_slave_sg = uniphier_mdmac_prep_slave_sg;
	ddev->device_terminate_all = uniphier_mdmac_terminate_all;
	ddev->device_synchronize = uniphier_mdmac_synchronize;
	ddev->device_tx_status = uniphier_mdmac_tx_status;
	ddev->device_issue_pending = uniphier_mdmac_issue_pending;
	FUNC2(&ddev->channels);

	for (i = 0; i < nr_chans; i++) {
		ret = FUNC20(pdev, mdev, i);
		if (ret)
			goto disable_clk;
	}

	ret = FUNC11(ddev);
	if (ret)
		goto disable_clk;

	ret = FUNC15(dev->of_node, of_dma_xlate_by_chan_id,
					 ddev);
	if (ret)
		goto unregister_dmac;

	FUNC18(pdev, mdev);

	return 0;

unregister_dmac:
	FUNC12(ddev);
disable_clk:
	FUNC5(mdev->clk);

	return ret;
}