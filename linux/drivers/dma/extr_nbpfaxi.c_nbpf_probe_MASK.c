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
struct resource {int start; int end; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct dma_device {int directions; void* dst_addr_widths; void* src_addr_widths; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_pause; int /*<<< orphan*/  device_config; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; struct device* dev; } ;
struct nbpf_device {int eirq; int /*<<< orphan*/  clk; struct nbpf_channel* chan; struct nbpf_config const* config; int /*<<< orphan*/  max_burst_mem_write; int /*<<< orphan*/  max_burst_mem_read; int /*<<< orphan*/  base; struct dma_device dma_dev; } ;
struct nbpf_desc_page {int dummy; } ;
struct nbpf_config {int num_channels; } ;
struct nbpf_channel {int irq; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 void* NBPF_DMA_BUSWIDTHS ; 
 int PAGE_SIZE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chan ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,struct resource*) ; 
 struct nbpf_device* FUNC10 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct nbpf_device*) ; 
 int FUNC12 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nbpf_alloc_chan_resources ; 
 int FUNC15 (struct nbpf_device*,int) ; 
 int /*<<< orphan*/  nbpf_config ; 
 int /*<<< orphan*/  FUNC16 (struct nbpf_device*) ; 
 int /*<<< orphan*/  nbpf_err_irq ; 
 int /*<<< orphan*/  nbpf_free_chan_resources ; 
 int /*<<< orphan*/  nbpf_issue_pending ; 
 int /*<<< orphan*/  nbpf_of_xlate ; 
 int /*<<< orphan*/  nbpf_pause ; 
 int /*<<< orphan*/  nbpf_prep_memcpy ; 
 int /*<<< orphan*/  nbpf_prep_slave_sg ; 
 int /*<<< orphan*/  nbpf_terminate_all ; 
 int /*<<< orphan*/  nbpf_tx_status ; 
 struct nbpf_config* FUNC17 (struct device*) ; 
 int FUNC18 (struct device_node*,int /*<<< orphan*/ ,struct nbpf_device*) ; 
 int /*<<< orphan*/  FUNC19 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC20 (struct platform_device*,char*) ; 
 struct resource* FUNC21 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (struct platform_device*,struct nbpf_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct nbpf_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct nbpf_device *nbpf;
	struct dma_device *dma_dev;
	struct resource *iomem, *irq_res;
	const struct nbpf_config *cfg;
	int num_channels;
	int ret, irq, eirq, i;
	int irqbuf[9] /* maximum 8 channels + error IRQ */;
	unsigned int irqs = 0;

	FUNC2(sizeof(struct nbpf_desc_page) > PAGE_SIZE);

	/* DT only */
	if (!np)
		return -ENODEV;

	cfg = FUNC17(dev);
	num_channels = cfg->num_channels;

	nbpf = FUNC10(dev, FUNC23(nbpf, chan, num_channels),
			    GFP_KERNEL);
	if (!nbpf)
		return -ENOMEM;

	dma_dev = &nbpf->dma_dev;
	dma_dev->dev = dev;

	iomem = FUNC21(pdev, IORESOURCE_MEM, 0);
	nbpf->base = FUNC9(dev, iomem);
	if (FUNC4(nbpf->base))
		return FUNC5(nbpf->base);

	nbpf->clk = FUNC8(dev, NULL);
	if (FUNC4(nbpf->clk))
		return FUNC5(nbpf->clk);

	FUNC19(np, "max-burst-mem-read",
			     &nbpf->max_burst_mem_read);
	FUNC19(np, "max-burst-mem-write",
			     &nbpf->max_burst_mem_write);

	nbpf->config = cfg;

	for (i = 0; irqs < FUNC0(irqbuf); i++) {
		irq_res = FUNC21(pdev, IORESOURCE_IRQ, i);
		if (!irq_res)
			break;

		for (irq = irq_res->start; irq <= irq_res->end;
		     irq++, irqs++)
			irqbuf[irqs] = irq;
	}

	/*
	 * 3 IRQ resource schemes are supported:
	 * 1. 1 shared IRQ for error and all channels
	 * 2. 2 IRQs: one for error and one shared for all channels
	 * 3. 1 IRQ for error and an own IRQ for each channel
	 */
	if (irqs != 1 && irqs != 2 && irqs != num_channels + 1)
		return -ENXIO;

	if (irqs == 1) {
		eirq = irqbuf[0];

		for (i = 0; i <= num_channels; i++)
			nbpf->chan[i].irq = irqbuf[0];
	} else {
		eirq = FUNC20(pdev, "error");
		if (eirq < 0)
			return eirq;

		if (irqs == num_channels + 1) {
			struct nbpf_channel *chan;

			for (i = 0, chan = nbpf->chan; i <= num_channels;
			     i++, chan++) {
				/* Skip the error IRQ */
				if (irqbuf[i] == eirq)
					i++;
				chan->irq = irqbuf[i];
			}

			if (chan != nbpf->chan + num_channels)
				return -EINVAL;
		} else {
			/* 2 IRQs and more than one channel */
			if (irqbuf[0] == eirq)
				irq = irqbuf[1];
			else
				irq = irqbuf[0];

			for (i = 0; i <= num_channels; i++)
				nbpf->chan[i].irq = irq;
		}
	}

	ret = FUNC11(dev, eirq, nbpf_err_irq,
			       IRQF_SHARED, "dma error", nbpf);
	if (ret < 0)
		return ret;
	nbpf->eirq = eirq;

	FUNC3(&dma_dev->channels);

	/* Create DMA Channel */
	for (i = 0; i < num_channels; i++) {
		ret = FUNC15(nbpf, i);
		if (ret < 0)
			return ret;
	}

	FUNC14(DMA_MEMCPY, dma_dev->cap_mask);
	FUNC14(DMA_SLAVE, dma_dev->cap_mask);
	FUNC14(DMA_PRIVATE, dma_dev->cap_mask);

	/* Common and MEMCPY operations */
	dma_dev->device_alloc_chan_resources
		= nbpf_alloc_chan_resources;
	dma_dev->device_free_chan_resources = nbpf_free_chan_resources;
	dma_dev->device_prep_dma_memcpy = nbpf_prep_memcpy;
	dma_dev->device_tx_status = nbpf_tx_status;
	dma_dev->device_issue_pending = nbpf_issue_pending;

	/*
	 * If we drop support for unaligned MEMCPY buffer addresses and / or
	 * lengths by setting
	 * dma_dev->copy_align = 4;
	 * then we can set transfer length to 4 bytes in nbpf_prep_one() for
	 * DMA_MEM_TO_MEM
	 */

	/* Compulsory for DMA_SLAVE fields */
	dma_dev->device_prep_slave_sg = nbpf_prep_slave_sg;
	dma_dev->device_config = nbpf_config;
	dma_dev->device_pause = nbpf_pause;
	dma_dev->device_terminate_all = nbpf_terminate_all;

	dma_dev->src_addr_widths = NBPF_DMA_BUSWIDTHS;
	dma_dev->dst_addr_widths = NBPF_DMA_BUSWIDTHS;
	dma_dev->directions = FUNC1(DMA_DEV_TO_MEM) | FUNC1(DMA_MEM_TO_DEV);

	FUNC22(pdev, nbpf);

	ret = FUNC7(nbpf->clk);
	if (ret < 0)
		return ret;

	FUNC16(nbpf);

	ret = FUNC12(dma_dev);
	if (ret < 0)
		goto e_clk_off;

	ret = FUNC18(np, nbpf_of_xlate, nbpf);
	if (ret < 0)
		goto e_dma_dev_unreg;

	return 0;

e_dma_dev_unreg:
	FUNC13(dma_dev);
e_clk_off:
	FUNC6(nbpf->clk);

	return ret;
}