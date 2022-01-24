#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct dma_device {void* src_addr_widths; void* dst_addr_widths; TYPE_1__* dev; int /*<<< orphan*/  device_config; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; } ;
struct zynqmp_dma_device {TYPE_1__* dev; TYPE_3__* chan; struct dma_device common; void* clk_apb; void* clk_main; } ;
struct TYPE_17__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_18__ {int bus_width; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (void*) ; 
 int FUNC4 (void*) ; 
 int /*<<< orphan*/  ZDMA_PM_TIMEOUT ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 void* FUNC7 (TYPE_1__*,char*) ; 
 struct zynqmp_dma_device* FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_cookie_status ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zynqmp_dma_device*) ; 
 int /*<<< orphan*/  of_zynqmp_dma_xlate ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct zynqmp_dma_device*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  zynqmp_dma_alloc_chan_resources ; 
 int FUNC23 (struct zynqmp_dma_device*,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_3__*) ; 
 int /*<<< orphan*/  zynqmp_dma_device_config ; 
 int /*<<< orphan*/  zynqmp_dma_device_terminate_all ; 
 int /*<<< orphan*/  zynqmp_dma_free_chan_resources ; 
 int /*<<< orphan*/  zynqmp_dma_issue_pending ; 
 int /*<<< orphan*/  zynqmp_dma_prep_memcpy ; 
 int FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC27(struct platform_device *pdev)
{
	struct zynqmp_dma_device *zdev;
	struct dma_device *p;
	int ret;

	zdev = FUNC8(&pdev->dev, sizeof(*zdev), GFP_KERNEL);
	if (!zdev)
		return -ENOMEM;

	zdev->dev = &pdev->dev;
	FUNC2(&zdev->common.channels);

	FUNC12(&pdev->dev, FUNC1(44));
	FUNC11(DMA_MEMCPY, zdev->common.cap_mask);

	p = &zdev->common;
	p->device_prep_dma_memcpy = zynqmp_dma_prep_memcpy;
	p->device_terminate_all = zynqmp_dma_device_terminate_all;
	p->device_issue_pending = zynqmp_dma_issue_pending;
	p->device_alloc_chan_resources = zynqmp_dma_alloc_chan_resources;
	p->device_free_chan_resources = zynqmp_dma_free_chan_resources;
	p->device_tx_status = dma_cookie_status;
	p->device_config = zynqmp_dma_device_config;
	p->dev = &pdev->dev;

	zdev->clk_main = FUNC7(&pdev->dev, "clk_main");
	if (FUNC3(zdev->clk_main)) {
		FUNC5(&pdev->dev, "main clock not found.\n");
		return FUNC4(zdev->clk_main);
	}

	zdev->clk_apb = FUNC7(&pdev->dev, "clk_apb");
	if (FUNC3(zdev->clk_apb)) {
		FUNC5(&pdev->dev, "apb clock not found.\n");
		return FUNC4(zdev->clk_apb);
	}

	FUNC14(pdev, zdev);
	FUNC21(zdev->dev, ZDMA_PM_TIMEOUT);
	FUNC22(zdev->dev);
	FUNC16(zdev->dev);
	FUNC18(zdev->dev);
	if (!FUNC17(zdev->dev)) {
		ret = FUNC25(zdev->dev);
		if (ret)
			return ret;
	}

	ret = FUNC23(zdev, pdev);
	if (ret) {
		FUNC5(&pdev->dev, "Probing channel failed\n");
		goto err_disable_pm;
	}

	p->dst_addr_widths = FUNC0(zdev->chan->bus_width / 8);
	p->src_addr_widths = FUNC0(zdev->chan->bus_width / 8);

	FUNC9(&zdev->common);

	ret = FUNC13(pdev->dev.of_node,
					 of_zynqmp_dma_xlate, zdev);
	if (ret) {
		FUNC5(&pdev->dev, "Unable to register DMA to DT\n");
		FUNC10(&zdev->common);
		goto free_chan_resources;
	}

	FUNC19(zdev->dev);
	FUNC20(zdev->dev);

	FUNC6(&pdev->dev, "ZynqMP DMA driver Probe success\n");

	return 0;

free_chan_resources:
	FUNC24(zdev->chan);
err_disable_pm:
	if (!FUNC17(zdev->dev))
		FUNC26(zdev->dev);
	FUNC15(zdev->dev);
	return ret;
}