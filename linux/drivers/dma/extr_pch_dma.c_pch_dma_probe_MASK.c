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
struct pci_device_id {unsigned int driver_data; } ;
struct pci_dev {int /*<<< orphan*/  irq; int /*<<< orphan*/  dev; } ;
struct pch_dma_regs {int /*<<< orphan*/ * desc; } ;
struct pch_dma_desc {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device_node; TYPE_2__* device; } ;
struct pch_dma_chan {TYPE_1__ chan; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  free_list; int /*<<< orphan*/  queue; int /*<<< orphan*/  active_list; int /*<<< orphan*/  lock; int /*<<< orphan*/ * membase; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; int /*<<< orphan*/ * dev; } ;
struct pch_dma {struct pch_dma_regs* membase; int /*<<< orphan*/  pool; TYPE_2__ dma; struct pch_dma_chan* channels; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct pch_dma*) ; 
 int /*<<< orphan*/  FUNC10 (struct pch_dma*) ; 
 struct pch_dma* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_dev*) ; 
 int FUNC14 (struct pci_dev*) ; 
 struct pch_dma_regs* FUNC15 (struct pci_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_dev*,struct pch_dma_regs*) ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int FUNC18 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct pci_dev*,int) ; 
 int FUNC20 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*,struct pch_dma*) ; 
 int /*<<< orphan*/  FUNC22 (struct pci_dev*) ; 
 int /*<<< orphan*/  pd_alloc_chan_resources ; 
 int /*<<< orphan*/  pd_device_terminate_all ; 
 int /*<<< orphan*/  pd_free_chan_resources ; 
 int /*<<< orphan*/  pd_irq ; 
 int /*<<< orphan*/  pd_issue_pending ; 
 int /*<<< orphan*/  pd_prep_slave_sg ; 
 int /*<<< orphan*/  pd_tx_status ; 
 int /*<<< orphan*/  pdc_tasklet ; 
 int FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pch_dma*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC26(struct pci_dev *pdev,
				   const struct pci_device_id *id)
{
	struct pch_dma *pd;
	struct pch_dma_regs *regs;
	unsigned int nr_channels;
	int err;
	int i;

	nr_channels = id->driver_data;
	pd = FUNC11(sizeof(*pd), GFP_KERNEL);
	if (!pd)
		return -ENOMEM;

	FUNC21(pdev, pd);

	err = FUNC14(pdev);
	if (err) {
		FUNC2(&pdev->dev, "Cannot enable PCI device\n");
		goto err_free_mem;
	}

	if (!(FUNC19(pdev, 1) & IORESOURCE_MEM)) {
		FUNC2(&pdev->dev, "Cannot find proper base address\n");
		err = -ENODEV;
		goto err_disable_pdev;
	}

	err = FUNC18(pdev, DRV_NAME);
	if (err) {
		FUNC2(&pdev->dev, "Cannot obtain PCI resources\n");
		goto err_disable_pdev;
	}

	err = FUNC20(pdev, FUNC0(32));
	if (err) {
		FUNC2(&pdev->dev, "Cannot set proper DMA config\n");
		goto err_free_res;
	}

	regs = pd->membase = FUNC15(pdev, 1, 0);
	if (!pd->membase) {
		FUNC2(&pdev->dev, "Cannot map MMIO registers\n");
		err = -ENOMEM;
		goto err_free_res;
	}

	FUNC22(pdev);

	err = FUNC23(pdev->irq, pd_irq, IRQF_SHARED, DRV_NAME, pd);
	if (err) {
		FUNC2(&pdev->dev, "Failed to request IRQ\n");
		goto err_iounmap;
	}

	pd->pool = FUNC7("pch_dma_desc_pool", &pdev->dev,
				   sizeof(struct pch_dma_desc), 4, 0);
	if (!pd->pool) {
		FUNC2(&pdev->dev, "Failed to alloc DMA descriptors\n");
		err = -ENOMEM;
		goto err_free_irq;
	}

	pd->dma.dev = &pdev->dev;

	FUNC1(&pd->dma.channels);

	for (i = 0; i < nr_channels; i++) {
		struct pch_dma_chan *pd_chan = &pd->channels[i];

		pd_chan->chan.device = &pd->dma;
		FUNC6(&pd_chan->chan);

		pd_chan->membase = &regs->desc[i];

		FUNC24(&pd_chan->lock);

		FUNC1(&pd_chan->active_list);
		FUNC1(&pd_chan->queue);
		FUNC1(&pd_chan->free_list);

		FUNC25(&pd_chan->tasklet, pdc_tasklet,
			     (unsigned long)pd_chan);
		FUNC12(&pd_chan->chan.device_node, &pd->dma.channels);
	}

	FUNC5(pd->dma.cap_mask);
	FUNC4(DMA_PRIVATE, pd->dma.cap_mask);
	FUNC4(DMA_SLAVE, pd->dma.cap_mask);

	pd->dma.device_alloc_chan_resources = pd_alloc_chan_resources;
	pd->dma.device_free_chan_resources = pd_free_chan_resources;
	pd->dma.device_tx_status = pd_tx_status;
	pd->dma.device_issue_pending = pd_issue_pending;
	pd->dma.device_prep_slave_sg = pd_prep_slave_sg;
	pd->dma.device_terminate_all = pd_device_terminate_all;

	err = FUNC3(&pd->dma);
	if (err) {
		FUNC2(&pdev->dev, "Failed to register DMA device\n");
		goto err_free_pool;
	}

	return 0;

err_free_pool:
	FUNC8(pd->pool);
err_free_irq:
	FUNC9(pdev->irq, pd);
err_iounmap:
	FUNC16(pdev, pd->membase);
err_free_res:
	FUNC17(pdev);
err_disable_pdev:
	FUNC13(pdev);
err_free_mem:
	FUNC10(pd);
	return err;
}