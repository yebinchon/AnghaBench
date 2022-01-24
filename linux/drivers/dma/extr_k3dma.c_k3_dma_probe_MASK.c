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
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct resource {int dummy; } ;
struct TYPE_18__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct of_device_id {int dummy; } ;
struct k3dma_soc_data {int flags; } ;
struct k3_dma_phy {int idx; scalar_t__ base; } ;
struct TYPE_17__ {int /*<<< orphan*/  copy_align; int /*<<< orphan*/  device_synchronize; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_resume; int /*<<< orphan*/  device_pause; int /*<<< orphan*/  device_config; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_prep_dma_cyclic; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_prep_dma_memcpy; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_free_chan_resources; TYPE_3__* dev; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; } ;
struct k3_dma_dev {int dma_channels; int dma_requests; int dma_channel_mask; int irq; scalar_t__ clk; TYPE_2__ slave; int /*<<< orphan*/  task; int /*<<< orphan*/  chan_pending; int /*<<< orphan*/  lock; struct k3_dma_chan* chans; scalar_t__ base; struct k3_dma_phy* phy; int /*<<< orphan*/  pool; } ;
struct TYPE_16__ {int /*<<< orphan*/  desc_free; } ;
struct k3_dma_chan {TYPE_1__ vc; int /*<<< orphan*/  node; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DMAENGINE_ALIGN_8_BYTES ; 
 int /*<<< orphan*/  DMA_CYCLIC ; 
 int /*<<< orphan*/  DMA_IN_PROGRESS ; 
 int /*<<< orphan*/  DMA_MEMCPY ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 int /*<<< orphan*/  DRIVER_NAME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int K3_FLAG_NOCLK ; 
 int /*<<< orphan*/  LLI_BLOCK_SIZE ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 struct k3dma_soc_data* FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_3__*,struct resource*) ; 
 void* FUNC12 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 struct k3_dma_dev* FUNC13 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct k3_dma_dev*) ; 
 int FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  k3_dma_config ; 
 int /*<<< orphan*/  FUNC19 (struct k3_dma_dev*,int) ; 
 int /*<<< orphan*/  k3_dma_free_chan_resources ; 
 int /*<<< orphan*/  k3_dma_free_desc ; 
 int /*<<< orphan*/  k3_dma_int_handler ; 
 int /*<<< orphan*/  k3_dma_issue_pending ; 
 int /*<<< orphan*/  k3_dma_prep_dma_cyclic ; 
 int /*<<< orphan*/  k3_dma_prep_memcpy ; 
 int /*<<< orphan*/  k3_dma_prep_slave_sg ; 
 int /*<<< orphan*/  k3_dma_synchronize ; 
 int /*<<< orphan*/  k3_dma_tasklet ; 
 int /*<<< orphan*/  k3_dma_terminate_all ; 
 int /*<<< orphan*/  k3_dma_transfer_pause ; 
 int /*<<< orphan*/  k3_dma_transfer_resume ; 
 int /*<<< orphan*/  k3_dma_tx_status ; 
 int /*<<< orphan*/  k3_of_dma_simple_xlate ; 
 int /*<<< orphan*/  k3_pdma_dt_ids ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct k3_dma_dev*) ; 
 struct of_device_id* FUNC21 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC22 (int /*<<< orphan*/ ,char*,int*) ; 
 int FUNC23 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct k3_dma_dev*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC29(struct platform_device *op)
{
	const struct k3dma_soc_data *soc_data;
	struct k3_dma_dev *d;
	const struct of_device_id *of_id;
	struct resource *iores;
	int i, ret, irq = 0;

	iores = FUNC24(op, IORESOURCE_MEM, 0);
	if (!iores)
		return -EINVAL;

	d = FUNC13(&op->dev, sizeof(*d), GFP_KERNEL);
	if (!d)
		return -ENOMEM;

	soc_data = FUNC9(&op->dev);
	if (!soc_data)
		return -EINVAL;

	d->base = FUNC11(&op->dev, iores);
	if (FUNC2(d->base))
		return FUNC3(d->base);

	of_id = FUNC21(k3_pdma_dt_ids, &op->dev);
	if (of_id) {
		FUNC22((&op->dev)->of_node,
				"dma-channels", &d->dma_channels);
		FUNC22((&op->dev)->of_node,
				"dma-requests", &d->dma_requests);
		ret = FUNC22((&op->dev)->of_node,
				"dma-channel-mask", &d->dma_channel_mask);
		if (ret) {
			FUNC8(&op->dev,
				 "dma-channel-mask doesn't exist, considering all as available.\n");
			d->dma_channel_mask = (u32)~0UL;
		}
	}

	if (!(soc_data->flags & K3_FLAG_NOCLK)) {
		d->clk = FUNC10(&op->dev, NULL);
		if (FUNC2(d->clk)) {
			FUNC6(&op->dev, "no dma clk\n");
			return FUNC3(d->clk);
		}
	}

	irq = FUNC23(op, 0);
	ret = FUNC14(&op->dev, irq,
			k3_dma_int_handler, 0, DRIVER_NAME, d);
	if (ret)
		return ret;

	d->irq = irq;

	/* A DMA memory pool for LLIs, align on 32-byte boundary */
	d->pool = FUNC18(DRIVER_NAME, &op->dev,
					LLI_BLOCK_SIZE, 32, 0);
	if (!d->pool)
		return -ENOMEM;

	/* init phy channel */
	d->phy = FUNC12(&op->dev,
		d->dma_channels, sizeof(struct k3_dma_phy), GFP_KERNEL);
	if (d->phy == NULL)
		return -ENOMEM;

	for (i = 0; i < d->dma_channels; i++) {
		struct k3_dma_phy *p;

		if (!(d->dma_channel_mask & FUNC0(i)))
			continue;

		p = &d->phy[i];
		p->idx = i;
		p->base = d->base + i * 0x40;
	}

	FUNC1(&d->slave.channels);
	FUNC17(DMA_SLAVE, d->slave.cap_mask);
	FUNC17(DMA_MEMCPY, d->slave.cap_mask);
	FUNC17(DMA_CYCLIC, d->slave.cap_mask);
	d->slave.dev = &op->dev;
	d->slave.device_free_chan_resources = k3_dma_free_chan_resources;
	d->slave.device_tx_status = k3_dma_tx_status;
	d->slave.device_prep_dma_memcpy = k3_dma_prep_memcpy;
	d->slave.device_prep_slave_sg = k3_dma_prep_slave_sg;
	d->slave.device_prep_dma_cyclic = k3_dma_prep_dma_cyclic;
	d->slave.device_issue_pending = k3_dma_issue_pending;
	d->slave.device_config = k3_dma_config;
	d->slave.device_pause = k3_dma_transfer_pause;
	d->slave.device_resume = k3_dma_transfer_resume;
	d->slave.device_terminate_all = k3_dma_terminate_all;
	d->slave.device_synchronize = k3_dma_synchronize;
	d->slave.copy_align = DMAENGINE_ALIGN_8_BYTES;

	/* init virtual channel */
	d->chans = FUNC12(&op->dev,
		d->dma_requests, sizeof(struct k3_dma_chan), GFP_KERNEL);
	if (d->chans == NULL)
		return -ENOMEM;

	for (i = 0; i < d->dma_requests; i++) {
		struct k3_dma_chan *c = &d->chans[i];

		c->status = DMA_IN_PROGRESS;
		FUNC1(&c->node);
		c->vc.desc_free = k3_dma_free_desc;
		FUNC28(&c->vc, &d->slave);
	}

	/* Enable clock before accessing registers */
	ret = FUNC5(d->clk);
	if (ret < 0) {
		FUNC6(&op->dev, "clk_prepare_enable failed: %d\n", ret);
		return ret;
	}

	FUNC19(d, true);

	ret = FUNC15(&d->slave);
	if (ret)
		goto dma_async_register_fail;

	ret = FUNC20((&op->dev)->of_node,
					k3_of_dma_simple_xlate, d);
	if (ret)
		goto of_dma_register_fail;

	FUNC26(&d->lock);
	FUNC1(&d->chan_pending);
	FUNC27(&d->task, k3_dma_tasklet, (unsigned long)d);
	FUNC25(op, d);
	FUNC7(&op->dev, "initialized\n");

	return 0;

of_dma_register_fail:
	FUNC16(&d->slave);
dma_async_register_fail:
	FUNC4(d->clk);
	return ret;
}