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
typedef  int /*<<< orphan*/  ulong ;
typedef  int u8 ;
struct resource {int /*<<< orphan*/  start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mpc_dma_tcd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device_node; struct dma_device* device; } ;
struct mpc_dma_chan {TYPE_1__ chan; int /*<<< orphan*/  lock; int /*<<< orphan*/  completed; int /*<<< orphan*/  active; int /*<<< orphan*/  queued; int /*<<< orphan*/  prepared; int /*<<< orphan*/  free; } ;
struct dma_device {int /*<<< orphan*/  channels; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_config; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; struct device* dev; } ;
struct mpc_dma {int is_mpc8308; void* irq; void* irq2; TYPE_2__* regs; int /*<<< orphan*/  tasklet; struct mpc_dma_chan* channels; struct dma_device dma; int /*<<< orphan*/  error_status_lock; struct mpc_dma_tcd* tcd; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dmailsa; int /*<<< orphan*/  dmaihsa; int /*<<< orphan*/  dmaerrl; int /*<<< orphan*/  dmaerrh; int /*<<< orphan*/  dmaintl; int /*<<< orphan*/  dmainth; int /*<<< orphan*/  dmaeeil; int /*<<< orphan*/  dmaeeih; int /*<<< orphan*/  dmaerql; int /*<<< orphan*/  dmaerqh; int /*<<< orphan*/  dmacr; int /*<<< orphan*/  dmagpor; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MPC512x_DMACHAN_MAX ; 
 int MPC8308_DMACHAN_MAX ; 
 int MPC_DMA_DMACR_EDCG ; 
 int MPC_DMA_DMACR_ERCA ; 
 int MPC_DMA_DMACR_ERGA ; 
 int MPC_DMA_DMAGPOR_SNOOP_ENABLE ; 
 int MPC_DMA_TCD_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct mpc_dma*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 TYPE_2__* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mpc_dma* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (void*,struct mpc_dma*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 
 void* FUNC12 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpc_dma_alloc_chan_resources ; 
 int /*<<< orphan*/  mpc_dma_device_config ; 
 int /*<<< orphan*/  mpc_dma_device_terminate_all ; 
 int /*<<< orphan*/  mpc_dma_free_chan_resources ; 
 int /*<<< orphan*/  mpc_dma_irq ; 
 int /*<<< orphan*/  mpc_dma_issue_pending ; 
 int /*<<< orphan*/  mpc_dma_prep_memcpy ; 
 int /*<<< orphan*/  mpc_dma_prep_slave_sg ; 
 int /*<<< orphan*/  mpc_dma_tasklet ; 
 int /*<<< orphan*/  mpc_dma_tx_status ; 
 int FUNC14 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 scalar_t__ FUNC15 (struct device_node*,char*) ; 
 int FUNC16 (struct device_node*,int /*<<< orphan*/ ,struct mpc_dma*) ; 
 int /*<<< orphan*/  of_dma_xlate_by_chan_id ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int) ; 
 int FUNC18 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mpc_dma*) ; 
 int /*<<< orphan*/  FUNC19 (struct resource*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static int FUNC22(struct platform_device *op)
{
	struct device_node *dn = op->dev.of_node;
	struct device *dev = &op->dev;
	struct dma_device *dma;
	struct mpc_dma *mdma;
	struct mpc_dma_chan *mchan;
	struct resource res;
	ulong regs_start, regs_size;
	int retval, i;
	u8 chancnt;

	mdma = FUNC5(dev, sizeof(struct mpc_dma), GFP_KERNEL);
	if (!mdma) {
		retval = -ENOMEM;
		goto err;
	}

	mdma->irq = FUNC12(dn, 0);
	if (!mdma->irq) {
		FUNC1(dev, "Error mapping IRQ!\n");
		retval = -EINVAL;
		goto err;
	}

	if (FUNC15(dn, "fsl,mpc8308-dma")) {
		mdma->is_mpc8308 = 1;
		mdma->irq2 = FUNC12(dn, 1);
		if (!mdma->irq2) {
			FUNC1(dev, "Error mapping IRQ!\n");
			retval = -EINVAL;
			goto err_dispose1;
		}
	}

	retval = FUNC14(dn, 0, &res);
	if (retval) {
		FUNC1(dev, "Error parsing memory region!\n");
		goto err_dispose2;
	}

	regs_start = res.start;
	regs_size = FUNC19(&res);

	if (!FUNC6(dev, regs_start, regs_size, DRV_NAME)) {
		FUNC1(dev, "Error requesting memory region!\n");
		retval = -EBUSY;
		goto err_dispose2;
	}

	mdma->regs = FUNC4(dev, regs_start, regs_size);
	if (!mdma->regs) {
		FUNC1(dev, "Error mapping memory region!\n");
		retval = -ENOMEM;
		goto err_dispose2;
	}

	mdma->tcd = (struct mpc_dma_tcd *)((u8 *)(mdma->regs)
							+ MPC_DMA_TCD_OFFSET);

	retval = FUNC18(mdma->irq, &mpc_dma_irq, 0, DRV_NAME, mdma);
	if (retval) {
		FUNC1(dev, "Error requesting IRQ!\n");
		retval = -EINVAL;
		goto err_dispose2;
	}

	if (mdma->is_mpc8308) {
		retval = FUNC18(mdma->irq2, &mpc_dma_irq, 0,
							DRV_NAME, mdma);
		if (retval) {
			FUNC1(dev, "Error requesting IRQ2!\n");
			retval = -EINVAL;
			goto err_free1;
		}
	}

	FUNC20(&mdma->error_status_lock);

	dma = &mdma->dma;
	dma->dev = dev;
	dma->device_alloc_chan_resources = mpc_dma_alloc_chan_resources;
	dma->device_free_chan_resources = mpc_dma_free_chan_resources;
	dma->device_issue_pending = mpc_dma_issue_pending;
	dma->device_tx_status = mpc_dma_tx_status;
	dma->device_prep_dma_memcpy = mpc_dma_prep_memcpy;
	dma->device_prep_slave_sg = mpc_dma_prep_slave_sg;
	dma->device_config = mpc_dma_device_config;
	dma->device_terminate_all = mpc_dma_device_terminate_all;

	FUNC0(&dma->channels);
	FUNC8(DMA_MEMCPY, dma->cap_mask);
	FUNC8(DMA_SLAVE, dma->cap_mask);

	if (mdma->is_mpc8308)
		chancnt = MPC8308_DMACHAN_MAX;
	else
		chancnt = MPC512x_DMACHAN_MAX;

	for (i = 0; i < chancnt; i++) {
		mchan = &mdma->channels[i];

		mchan->chan.device = dma;
		FUNC9(&mchan->chan);

		FUNC0(&mchan->free);
		FUNC0(&mchan->prepared);
		FUNC0(&mchan->queued);
		FUNC0(&mchan->active);
		FUNC0(&mchan->completed);

		FUNC20(&mchan->lock);
		FUNC13(&mchan->chan.device_node, &dma->channels);
	}

	FUNC21(&mdma->tasklet, mpc_dma_tasklet, (unsigned long)mdma);

	/*
	 * Configure DMA Engine:
	 * - Dynamic clock,
	 * - Round-robin group arbitration,
	 * - Round-robin channel arbitration.
	 */
	if (mdma->is_mpc8308) {
		/* MPC8308 has 16 channels and lacks some registers */
		FUNC17(&mdma->regs->dmacr, MPC_DMA_DMACR_ERCA);

		/* enable snooping */
		FUNC17(&mdma->regs->dmagpor, MPC_DMA_DMAGPOR_SNOOP_ENABLE);
		/* Disable error interrupts */
		FUNC17(&mdma->regs->dmaeeil, 0);

		/* Clear interrupts status */
		FUNC17(&mdma->regs->dmaintl, 0xFFFF);
		FUNC17(&mdma->regs->dmaerrl, 0xFFFF);
	} else {
		FUNC17(&mdma->regs->dmacr, MPC_DMA_DMACR_EDCG |
						MPC_DMA_DMACR_ERGA |
						MPC_DMA_DMACR_ERCA);

		/* Disable hardware DMA requests */
		FUNC17(&mdma->regs->dmaerqh, 0);
		FUNC17(&mdma->regs->dmaerql, 0);

		/* Disable error interrupts */
		FUNC17(&mdma->regs->dmaeeih, 0);
		FUNC17(&mdma->regs->dmaeeil, 0);

		/* Clear interrupts status */
		FUNC17(&mdma->regs->dmainth, 0xFFFFFFFF);
		FUNC17(&mdma->regs->dmaintl, 0xFFFFFFFF);
		FUNC17(&mdma->regs->dmaerrh, 0xFFFFFFFF);
		FUNC17(&mdma->regs->dmaerrl, 0xFFFFFFFF);

		/* Route interrupts to IPIC */
		FUNC17(&mdma->regs->dmaihsa, 0);
		FUNC17(&mdma->regs->dmailsa, 0);
	}

	/* Register DMA engine */
	FUNC2(dev, mdma);
	retval = FUNC7(dma);
	if (retval)
		goto err_free2;

	/* Register with OF helpers for DMA lookups (nonfatal) */
	if (dev->of_node) {
		retval = FUNC16(dev->of_node,
						of_dma_xlate_by_chan_id, mdma);
		if (retval)
			FUNC3(dev, "Could not register for OF lookup\n");
	}

	return 0;

err_free2:
	if (mdma->is_mpc8308)
		FUNC10(mdma->irq2, mdma);
err_free1:
	FUNC10(mdma->irq, mdma);
err_dispose2:
	if (mdma->is_mpc8308)
		FUNC11(mdma->irq2);
err_dispose1:
	FUNC11(mdma->irq);
err:
	return retval;
}