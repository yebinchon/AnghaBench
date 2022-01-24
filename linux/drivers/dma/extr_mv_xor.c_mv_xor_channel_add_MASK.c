#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mv_xor_device {scalar_t__ xor_type; int /*<<< orphan*/  xor_high_base; int /*<<< orphan*/  xor_base; } ;
struct TYPE_2__ {int /*<<< orphan*/  device_node; struct dma_device* device; } ;
struct dma_device {int max_xor; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; int /*<<< orphan*/  device_prep_dma_xor; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  device_prep_dma_interrupt; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; int /*<<< orphan*/ * dev; } ;
struct mv_xor_chan {int idx; int irq; scalar_t__ op_in_desc; int /*<<< orphan*/  dma_desc_pool; int /*<<< orphan*/  dma_desc_pool_virt; TYPE_1__ dmachan; int /*<<< orphan*/  allocated_slots; int /*<<< orphan*/  free_slots; int /*<<< orphan*/  completed_slots; int /*<<< orphan*/  chain; int /*<<< orphan*/  lock; int /*<<< orphan*/  irq_tasklet; int /*<<< orphan*/  mmr_high_base; int /*<<< orphan*/  mmr_base; int /*<<< orphan*/  dummy_dst; void* dummy_dst_addr; int /*<<< orphan*/  dummy_src; void* dummy_src_addr; struct mv_xor_device* xordev; struct dma_device dmadev; } ;
typedef  int /*<<< orphan*/  dma_cap_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_INTERRUPT ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  DMA_XOR ; 
 int ENOMEM ; 
 struct mv_xor_chan* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MV_XOR_MIN_BYTE_COUNT ; 
 int /*<<< orphan*/  MV_XOR_POOL_SIZE ; 
 scalar_t__ XOR_MODE_IN_DESC ; 
 scalar_t__ XOR_MODE_IN_REG ; 
 int /*<<< orphan*/  XOR_OPERATION_MODE_IN_DESC ; 
 int /*<<< orphan*/  XOR_OPERATION_MODE_XOR ; 
 scalar_t__ XOR_ORION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mv_xor_chan* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct dma_device*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct mv_xor_chan*) ; 
 int FUNC15 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC16 (struct mv_xor_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct mv_xor_chan*) ; 
 int FUNC18 (struct mv_xor_chan*) ; 
 int /*<<< orphan*/  mv_xor_alloc_chan_resources ; 
 int /*<<< orphan*/  mv_xor_free_chan_resources ; 
 int /*<<< orphan*/  mv_xor_interrupt_handler ; 
 int /*<<< orphan*/  mv_xor_issue_pending ; 
 int /*<<< orphan*/  mv_xor_prep_dma_interrupt ; 
 int /*<<< orphan*/  mv_xor_prep_dma_memcpy ; 
 int /*<<< orphan*/  mv_xor_prep_dma_xor ; 
 int /*<<< orphan*/  mv_xor_status ; 
 int /*<<< orphan*/  mv_xor_tasklet ; 
 int FUNC19 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mv_xor_chan*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static struct mv_xor_chan *
FUNC22(struct mv_xor_device *xordev,
		   struct platform_device *pdev,
		   int idx, dma_cap_mask_t cap_mask, int irq)
{
	int ret = 0;
	struct mv_xor_chan *mv_chan;
	struct dma_device *dma_dev;

	mv_chan = FUNC5(&pdev->dev, sizeof(*mv_chan), GFP_KERNEL);
	if (!mv_chan)
		return FUNC0(-ENOMEM);

	mv_chan->idx = idx;
	mv_chan->irq = irq;
	if (xordev->xor_type == XOR_ORION)
		mv_chan->op_in_desc = XOR_MODE_IN_REG;
	else
		mv_chan->op_in_desc = XOR_MODE_IN_DESC;

	dma_dev = &mv_chan->dmadev;
	dma_dev->dev = &pdev->dev;
	mv_chan->xordev = xordev;

	/*
	 * These source and destination dummy buffers are used to implement
	 * a DMA_INTERRUPT operation as a minimum-sized XOR operation.
	 * Hence, we only need to map the buffers at initialization-time.
	 */
	mv_chan->dummy_src_addr = FUNC11(dma_dev->dev,
		mv_chan->dummy_src, MV_XOR_MIN_BYTE_COUNT, DMA_FROM_DEVICE);
	mv_chan->dummy_dst_addr = FUNC11(dma_dev->dev,
		mv_chan->dummy_dst, MV_XOR_MIN_BYTE_COUNT, DMA_TO_DEVICE);

	/* allocate coherent memory for hardware descriptors
	 * note: writecombine gives slightly better performance, but
	 * requires that we explicitly flush the writes
	 */
	mv_chan->dma_desc_pool_virt =
	  FUNC6(&pdev->dev, MV_XOR_POOL_SIZE, &mv_chan->dma_desc_pool,
		       GFP_KERNEL);
	if (!mv_chan->dma_desc_pool_virt)
		return FUNC0(-ENOMEM);

	/* discover transaction capabilites from the platform data */
	dma_dev->cap_mask = cap_mask;

	FUNC1(&dma_dev->channels);

	/* set base routines */
	dma_dev->device_alloc_chan_resources = mv_xor_alloc_chan_resources;
	dma_dev->device_free_chan_resources = mv_xor_free_chan_resources;
	dma_dev->device_tx_status = mv_xor_status;
	dma_dev->device_issue_pending = mv_xor_issue_pending;

	/* set prep routines based on capability */
	if (FUNC10(DMA_INTERRUPT, dma_dev->cap_mask))
		dma_dev->device_prep_dma_interrupt = mv_xor_prep_dma_interrupt;
	if (FUNC10(DMA_MEMCPY, dma_dev->cap_mask))
		dma_dev->device_prep_dma_memcpy = mv_xor_prep_dma_memcpy;
	if (FUNC10(DMA_XOR, dma_dev->cap_mask)) {
		dma_dev->max_xor = 8;
		dma_dev->device_prep_dma_xor = mv_xor_prep_dma_xor;
	}

	mv_chan->mmr_base = xordev->xor_base;
	mv_chan->mmr_high_base = xordev->xor_high_base;
	FUNC21(&mv_chan->irq_tasklet, mv_xor_tasklet, (unsigned long)
		     mv_chan);

	/* clear errors before enabling interrupts */
	FUNC14(mv_chan);

	ret = FUNC19(mv_chan->irq, mv_xor_interrupt_handler,
			  0, FUNC4(&pdev->dev), mv_chan);
	if (ret)
		goto err_free_dma;

	FUNC17(mv_chan);

	if (mv_chan->op_in_desc == XOR_MODE_IN_DESC)
		FUNC16(mv_chan, XOR_OPERATION_MODE_IN_DESC);
	else
		FUNC16(mv_chan, XOR_OPERATION_MODE_XOR);

	FUNC20(&mv_chan->lock);
	FUNC1(&mv_chan->chain);
	FUNC1(&mv_chan->completed_slots);
	FUNC1(&mv_chan->free_slots);
	FUNC1(&mv_chan->allocated_slots);
	mv_chan->dmachan.device = dma_dev;
	FUNC8(&mv_chan->dmachan);

	FUNC13(&mv_chan->dmachan.device_node, &dma_dev->channels);

	if (FUNC10(DMA_MEMCPY, dma_dev->cap_mask)) {
		ret = FUNC15(mv_chan);
		FUNC2(&pdev->dev, "memcpy self test returned %d\n", ret);
		if (ret)
			goto err_free_irq;
	}

	if (FUNC10(DMA_XOR, dma_dev->cap_mask)) {
		ret = FUNC18(mv_chan);
		FUNC2(&pdev->dev, "xor self test returned %d\n", ret);
		if (ret)
			goto err_free_irq;
	}

	FUNC3(&pdev->dev, "Marvell XOR (%s): ( %s%s%s)\n",
		 mv_chan->op_in_desc ? "Descriptor Mode" : "Registers Mode",
		 FUNC10(DMA_XOR, dma_dev->cap_mask) ? "xor " : "",
		 FUNC10(DMA_MEMCPY, dma_dev->cap_mask) ? "cpy " : "",
		 FUNC10(DMA_INTERRUPT, dma_dev->cap_mask) ? "intr " : "");

	ret = FUNC7(dma_dev);
	if (ret)
		goto err_free_irq;

	return mv_chan;

err_free_irq:
	FUNC12(mv_chan->irq, mv_chan);
err_free_dma:
	FUNC9(&pdev->dev, MV_XOR_POOL_SIZE,
			  mv_chan->dma_desc_pool_virt, mv_chan->dma_desc_pool);
	return FUNC0(ret);
}