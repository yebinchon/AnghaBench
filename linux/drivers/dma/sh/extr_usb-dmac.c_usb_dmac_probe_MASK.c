#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct dma_device {int src_addr_widths; int dst_addr_widths; int directions; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; int /*<<< orphan*/  residue_granularity; TYPE_1__* dev; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; } ;
struct usb_dmac {unsigned int n_channels; struct dma_device engine; int /*<<< orphan*/ * channels; int /*<<< orphan*/  iomem; TYPE_1__* dev; } ;
struct resource {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
typedef  enum dma_slave_buswidth { ____Placeholder_dma_slave_buswidth } dma_slave_buswidth ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_RESIDUE_GRANULARITY_BURST ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int USB_DMAC_SLAVE_BUSWIDTH ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct resource*) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,unsigned int,int,int /*<<< orphan*/ ) ; 
 struct usb_dmac* FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct usb_dmac*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  usb_dmac_alloc_chan_resources ; 
 int FUNC18 (struct usb_dmac*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  usb_dmac_chan_terminate_all ; 
 int /*<<< orphan*/  usb_dmac_free_chan_resources ; 
 int FUNC19 (struct usb_dmac*) ; 
 int /*<<< orphan*/  usb_dmac_issue_pending ; 
 int /*<<< orphan*/  usb_dmac_of_xlate ; 
 int FUNC20 (TYPE_1__*,struct usb_dmac*) ; 
 int /*<<< orphan*/  usb_dmac_prep_slave_sg ; 
 int /*<<< orphan*/  usb_dmac_tx_status ; 

__attribute__((used)) static int FUNC21(struct platform_device *pdev)
{
	const enum dma_slave_buswidth widths = USB_DMAC_SLAVE_BUSWIDTH;
	struct dma_device *engine;
	struct usb_dmac *dmac;
	struct resource *mem;
	unsigned int i;
	int ret;

	dmac = FUNC7(&pdev->dev, sizeof(*dmac), GFP_KERNEL);
	if (!dmac)
		return -ENOMEM;

	dmac->dev = &pdev->dev;
	FUNC13(pdev, dmac);

	ret = FUNC20(&pdev->dev, dmac);
	if (ret < 0)
		return ret;

	dmac->channels = FUNC6(&pdev->dev, dmac->n_channels,
				      sizeof(*dmac->channels), GFP_KERNEL);
	if (!dmac->channels)
		return -ENOMEM;

	/* Request resources. */
	mem = FUNC12(pdev, IORESOURCE_MEM, 0);
	dmac->iomem = FUNC5(&pdev->dev, mem);
	if (FUNC2(dmac->iomem))
		return FUNC3(dmac->iomem);

	/* Enable runtime PM and initialize the device. */
	FUNC15(&pdev->dev);
	ret = FUNC16(&pdev->dev);
	if (ret < 0) {
		FUNC4(&pdev->dev, "runtime PM get sync failed (%d)\n", ret);
		goto error_pm;
	}

	ret = FUNC19(dmac);

	if (ret) {
		FUNC4(&pdev->dev, "failed to reset device\n");
		goto error;
	}

	/* Initialize the channels. */
	FUNC1(&dmac->engine.channels);

	for (i = 0; i < dmac->n_channels; ++i) {
		ret = FUNC18(dmac, &dmac->channels[i], i);
		if (ret < 0)
			goto error;
	}

	/* Register the DMAC as a DMA provider for DT. */
	ret = FUNC11(pdev->dev.of_node, usb_dmac_of_xlate,
					 NULL);
	if (ret < 0)
		goto error;

	/*
	 * Register the DMA engine device.
	 *
	 * Default transfer size of 32 bytes requires 32-byte alignment.
	 */
	engine = &dmac->engine;
	FUNC9(DMA_SLAVE, engine->cap_mask);

	engine->dev = &pdev->dev;

	engine->src_addr_widths = widths;
	engine->dst_addr_widths = widths;
	engine->directions = FUNC0(DMA_MEM_TO_DEV) | FUNC0(DMA_DEV_TO_MEM);
	engine->residue_granularity = DMA_RESIDUE_GRANULARITY_BURST;

	engine->device_alloc_chan_resources = usb_dmac_alloc_chan_resources;
	engine->device_free_chan_resources = usb_dmac_free_chan_resources;
	engine->device_prep_slave_sg = usb_dmac_prep_slave_sg;
	engine->device_terminate_all = usb_dmac_chan_terminate_all;
	engine->device_tx_status = usb_dmac_tx_status;
	engine->device_issue_pending = usb_dmac_issue_pending;

	ret = FUNC8(engine);
	if (ret < 0)
		goto error;

	FUNC17(&pdev->dev);
	return 0;

error:
	FUNC10(pdev->dev.of_node);
	FUNC17(&pdev->dev);
error_pm:
	FUNC14(&pdev->dev);
	return ret;
}