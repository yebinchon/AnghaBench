#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct zx_dma_phy {int idx; scalar_t__ base; } ;
struct TYPE_14__ {int directions; int /*<<< orphan*/  residue_granularity; void* dst_addr_widths; void* src_addr_widths; int /*<<< orphan*/  copy_align; int /*<<< orphan*/  device_resume; int /*<<< orphan*/  device_pause; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_config; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_prep_dma_cyclic; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; TYPE_3__* dev; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; } ;
struct zx_dma_dev {int dma_channels; int dma_requests; scalar_t__ clk; TYPE_2__ slave; int /*<<< orphan*/  chan_pending; int /*<<< orphan*/  lock; struct zx_dma_chan* chans; scalar_t__ base; struct zx_dma_phy* phy; int /*<<< orphan*/  pool; int /*<<< orphan*/  irq; } ;
struct TYPE_13__ {int /*<<< orphan*/  desc_free; } ;
struct zx_dma_chan {TYPE_1__ vc; int /*<<< orphan*/  node; int /*<<< orphan*/  status; } ;
struct resource {int dummy; } ;
struct TYPE_15__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_ALIGN ; 
 int /*<<< orphan*/  DMA_CYCLIC ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_IN_PROGRESS ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_MEM_TO_MEM ; 
 int /*<<< orphan*/  DMA_PRIVATE ; 
 int /*<<< orphan*/  DMA_RESIDUE_GRANULARITY_SEGMENT ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  LLI_BLOCK_SIZE ; 
 int FUNC3 (scalar_t__) ; 
 void* ZX_DMA_BUSWIDTHS ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_3__*,struct resource*) ; 
 void* FUNC10 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 struct zx_dma_dev* FUNC11 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zx_dma_dev*) ; 
 int FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct zx_dma_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC19 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC20 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct platform_device*,struct zx_dma_dev*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  zx_dma_config ; 
 int /*<<< orphan*/  zx_dma_free_chan_resources ; 
 int /*<<< orphan*/  zx_dma_free_desc ; 
 int /*<<< orphan*/  FUNC24 (struct zx_dma_dev*) ; 
 int /*<<< orphan*/  zx_dma_int_handler ; 
 int /*<<< orphan*/  zx_dma_issue_pending ; 
 int /*<<< orphan*/  zx_dma_prep_dma_cyclic ; 
 int /*<<< orphan*/  zx_dma_prep_memcpy ; 
 int /*<<< orphan*/  zx_dma_prep_slave_sg ; 
 int /*<<< orphan*/  zx_dma_terminate_all ; 
 int /*<<< orphan*/  zx_dma_transfer_pause ; 
 int /*<<< orphan*/  zx_dma_transfer_resume ; 
 int /*<<< orphan*/  zx_dma_tx_status ; 
 int /*<<< orphan*/  zx_of_dma_simple_xlate ; 

__attribute__((used)) static int FUNC25(struct platform_device *op)
{
	struct zx_dma_dev *d;
	struct resource *iores;
	int i, ret = 0;

	iores = FUNC20(op, IORESOURCE_MEM, 0);
	if (!iores)
		return -EINVAL;

	d = FUNC11(&op->dev, sizeof(*d), GFP_KERNEL);
	if (!d)
		return -ENOMEM;

	d->base = FUNC9(&op->dev, iores);
	if (FUNC2(d->base))
		return FUNC3(d->base);

	FUNC18((&op->dev)->of_node,
			     "dma-channels", &d->dma_channels);
	FUNC18((&op->dev)->of_node,
			     "dma-requests", &d->dma_requests);
	if (!d->dma_requests || !d->dma_channels)
		return -EINVAL;

	d->clk = FUNC8(&op->dev, NULL);
	if (FUNC2(d->clk)) {
		FUNC6(&op->dev, "no dma clk\n");
		return FUNC3(d->clk);
	}

	d->irq = FUNC19(op, 0);
	ret = FUNC12(&op->dev, d->irq, zx_dma_int_handler,
			       0, DRIVER_NAME, d);
	if (ret)
		return ret;

	/* A DMA memory pool for LLIs, align on 32-byte boundary */
	d->pool = FUNC16(DRIVER_NAME, &op->dev,
			LLI_BLOCK_SIZE, 32, 0);
	if (!d->pool)
		return -ENOMEM;

	/* init phy channel */
	d->phy = FUNC10(&op->dev,
		d->dma_channels, sizeof(struct zx_dma_phy), GFP_KERNEL);
	if (!d->phy)
		return -ENOMEM;

	for (i = 0; i < d->dma_channels; i++) {
		struct zx_dma_phy *p = &d->phy[i];

		p->idx = i;
		p->base = d->base + i * 0x40;
	}

	FUNC1(&d->slave.channels);
	FUNC15(DMA_SLAVE, d->slave.cap_mask);
	FUNC15(DMA_MEMCPY, d->slave.cap_mask);
	FUNC15(DMA_CYCLIC, d->slave.cap_mask);
	FUNC15(DMA_PRIVATE, d->slave.cap_mask);
	d->slave.dev = &op->dev;
	d->slave.device_free_chan_resources = zx_dma_free_chan_resources;
	d->slave.device_tx_status = zx_dma_tx_status;
	d->slave.device_prep_dma_memcpy = zx_dma_prep_memcpy;
	d->slave.device_prep_slave_sg = zx_dma_prep_slave_sg;
	d->slave.device_prep_dma_cyclic = zx_dma_prep_dma_cyclic;
	d->slave.device_issue_pending = zx_dma_issue_pending;
	d->slave.device_config = zx_dma_config;
	d->slave.device_terminate_all = zx_dma_terminate_all;
	d->slave.device_pause = zx_dma_transfer_pause;
	d->slave.device_resume = zx_dma_transfer_resume;
	d->slave.copy_align = DMA_ALIGN;
	d->slave.src_addr_widths = ZX_DMA_BUSWIDTHS;
	d->slave.dst_addr_widths = ZX_DMA_BUSWIDTHS;
	d->slave.directions = FUNC0(DMA_MEM_TO_MEM) | FUNC0(DMA_MEM_TO_DEV)
			| FUNC0(DMA_DEV_TO_MEM);
	d->slave.residue_granularity = DMA_RESIDUE_GRANULARITY_SEGMENT;

	/* init virtual channel */
	d->chans = FUNC10(&op->dev,
		d->dma_requests, sizeof(struct zx_dma_chan), GFP_KERNEL);
	if (!d->chans)
		return -ENOMEM;

	for (i = 0; i < d->dma_requests; i++) {
		struct zx_dma_chan *c = &d->chans[i];

		c->status = DMA_IN_PROGRESS;
		FUNC1(&c->node);
		c->vc.desc_free = zx_dma_free_desc;
		FUNC23(&c->vc, &d->slave);
	}

	/* Enable clock before accessing registers */
	ret = FUNC5(d->clk);
	if (ret < 0) {
		FUNC6(&op->dev, "clk_prepare_enable failed: %d\n", ret);
		goto zx_dma_out;
	}

	FUNC24(d);

	FUNC22(&d->lock);
	FUNC1(&d->chan_pending);
	FUNC21(op, d);

	ret = FUNC13(&d->slave);
	if (ret)
		goto clk_dis;

	ret = FUNC17((&op->dev)->of_node,
					 zx_of_dma_simple_xlate, d);
	if (ret)
		goto of_dma_register_fail;

	FUNC7(&op->dev, "initialized\n");
	return 0;

of_dma_register_fail:
	FUNC14(&d->slave);
clk_dis:
	FUNC4(d->clk);
zx_dma_out:
	return ret;
}