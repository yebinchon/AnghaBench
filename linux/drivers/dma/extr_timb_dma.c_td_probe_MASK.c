#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timb_dma_platform_data_channel {int rx; int /*<<< orphan*/  bytes_per_line; int /*<<< orphan*/  descriptor_elements; int /*<<< orphan*/  descriptors; } ;
struct timb_dma_platform_data {int nr_channels; struct timb_dma_platform_data_channel* channels; } ;
struct TYPE_3__ {int /*<<< orphan*/  device_node; TYPE_2__* device; } ;
struct timb_dma_chan {TYPE_1__ chan; scalar_t__ membase; int /*<<< orphan*/  direction; int /*<<< orphan*/  bytes_per_line; int /*<<< orphan*/  desc_elems; int /*<<< orphan*/  descs; int /*<<< orphan*/  free_list; int /*<<< orphan*/  queue; int /*<<< orphan*/  active_list; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  channels; int /*<<< orphan*/ * dev; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; } ;
struct timb_dma {scalar_t__ membase; int /*<<< orphan*/  tasklet; TYPE_2__ dma; struct timb_dma_chan* channels; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int TIMBDMA_32BIT_ADDR ; 
 scalar_t__ TIMBDMA_ACR ; 
 scalar_t__ TIMBDMA_IER ; 
 int TIMBDMA_INSTANCE_OFFSET ; 
 scalar_t__ TIMBDMA_INSTANCE_TX_OFFSET ; 
 scalar_t__ TIMBDMA_ISR ; 
 int /*<<< orphan*/  channels ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 struct timb_dma_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,struct timb_dma*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct timb_dma*) ; 
 struct timb_dma* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC15 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,struct timb_dma*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timb_dma*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct resource*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct timb_dma*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  td_alloc_chan_resources ; 
 int /*<<< orphan*/  td_free_chan_resources ; 
 int /*<<< orphan*/  td_irq ; 
 int /*<<< orphan*/  td_issue_pending ; 
 int /*<<< orphan*/  td_prep_slave_sg ; 
 int /*<<< orphan*/  td_tasklet ; 
 int /*<<< orphan*/  td_terminate_all ; 
 int /*<<< orphan*/  td_tx_status ; 

__attribute__((used)) static int FUNC25(struct platform_device *pdev)
{
	struct timb_dma_platform_data *pdata = FUNC3(&pdev->dev);
	struct timb_dma *td;
	struct resource *iomem;
	int irq;
	int err;
	int i;

	if (!pdata) {
		FUNC2(&pdev->dev, "No platform data\n");
		return -EINVAL;
	}

	iomem = FUNC15(pdev, IORESOURCE_MEM, 0);
	if (!iomem)
		return -EINVAL;

	irq = FUNC14(pdev, 0);
	if (irq < 0)
		return irq;

	if (!FUNC19(iomem->start, FUNC20(iomem),
		DRIVER_NAME))
		return -EBUSY;

	td  = FUNC12(FUNC22(td, channels, pdata->nr_channels),
		      GFP_KERNEL);
	if (!td) {
		err = -ENOMEM;
		goto err_release_region;
	}

	FUNC1(&pdev->dev, "Allocated TD: %p\n", td);

	td->membase = FUNC8(iomem->start, FUNC20(iomem));
	if (!td->membase) {
		FUNC2(&pdev->dev, "Failed to remap I/O memory\n");
		err = -ENOMEM;
		goto err_free_mem;
	}

	/* 32bit addressing */
	FUNC10(TIMBDMA_32BIT_ADDR, td->membase + TIMBDMA_ACR);

	/* disable and clear any interrupts */
	FUNC10(0x0, td->membase + TIMBDMA_IER);
	FUNC10(0xFFFFFFFF, td->membase + TIMBDMA_ISR);

	FUNC23(&td->tasklet, td_tasklet, (unsigned long)td);

	err = FUNC18(irq, td_irq, IRQF_SHARED, DRIVER_NAME, td);
	if (err) {
		FUNC2(&pdev->dev, "Failed to request IRQ\n");
		goto err_tasklet_kill;
	}

	td->dma.device_alloc_chan_resources	= td_alloc_chan_resources;
	td->dma.device_free_chan_resources	= td_free_chan_resources;
	td->dma.device_tx_status		= td_tx_status;
	td->dma.device_issue_pending		= td_issue_pending;

	FUNC5(DMA_SLAVE, td->dma.cap_mask);
	FUNC5(DMA_PRIVATE, td->dma.cap_mask);
	td->dma.device_prep_slave_sg = td_prep_slave_sg;
	td->dma.device_terminate_all = td_terminate_all;

	td->dma.dev = &pdev->dev;

	FUNC0(&td->dma.channels);

	for (i = 0; i < pdata->nr_channels; i++) {
		struct timb_dma_chan *td_chan = &td->channels[i];
		struct timb_dma_platform_data_channel *pchan =
			pdata->channels + i;

		/* even channels are RX, odd are TX */
		if ((i % 2) == pchan->rx) {
			FUNC2(&pdev->dev, "Wrong channel configuration\n");
			err = -EINVAL;
			goto err_free_irq;
		}

		td_chan->chan.device = &td->dma;
		FUNC6(&td_chan->chan);
		FUNC21(&td_chan->lock);
		FUNC0(&td_chan->active_list);
		FUNC0(&td_chan->queue);
		FUNC0(&td_chan->free_list);

		td_chan->descs = pchan->descriptors;
		td_chan->desc_elems = pchan->descriptor_elements;
		td_chan->bytes_per_line = pchan->bytes_per_line;
		td_chan->direction = pchan->rx ? DMA_DEV_TO_MEM :
			DMA_MEM_TO_DEV;

		td_chan->membase = td->membase +
			(i / 2) * TIMBDMA_INSTANCE_OFFSET +
			(pchan->rx ? 0 : TIMBDMA_INSTANCE_TX_OFFSET);

		FUNC1(&pdev->dev, "Chan: %d, membase: %p\n",
			i, td_chan->membase);

		FUNC13(&td_chan->chan.device_node, &td->dma.channels);
	}

	err = FUNC4(&td->dma);
	if (err) {
		FUNC2(&pdev->dev, "Failed to register async device\n");
		goto err_free_irq;
	}

	FUNC16(pdev, td);

	FUNC1(&pdev->dev, "Probe result: %d\n", err);
	return err;

err_free_irq:
	FUNC7(irq, td);
err_tasklet_kill:
	FUNC24(&td->tasklet);
	FUNC9(td->membase);
err_free_mem:
	FUNC11(td);
err_release_region:
	FUNC17(iomem->start, FUNC20(iomem));

	return err;

}