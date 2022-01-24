#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_15__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_23__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/ * dma_parms; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {int /*<<< orphan*/  data; } ;
struct TYPE_24__ {int directions; TYPE_2__* dev; int /*<<< orphan*/  device_tx_status; int /*<<< orphan*/  device_issue_pending; int /*<<< orphan*/  device_terminate_all; int /*<<< orphan*/  device_resume; int /*<<< orphan*/  device_pause; int /*<<< orphan*/  device_config; int /*<<< orphan*/  device_prep_slave_sg; int /*<<< orphan*/  device_free_chan_resources; int /*<<< orphan*/  device_alloc_chan_resources; void* dst_addr_widths; void* src_addr_widths; int /*<<< orphan*/  residue_granularity; int /*<<< orphan*/  cap_mask; int /*<<< orphan*/  channels; } ;
struct bam_device {scalar_t__ irq; int ee; int num_channels; int num_ees; int /*<<< orphan*/ * bamclk; int /*<<< orphan*/  task; TYPE_15__* channels; TYPE_9__ common; scalar_t__ controlled_remotely; TYPE_2__* dev; int /*<<< orphan*/  dma_parms; int /*<<< orphan*/ * regs; int /*<<< orphan*/  layout; } ;
struct TYPE_22__ {int /*<<< orphan*/  task; } ;
struct TYPE_21__ {TYPE_1__ vc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BAM_DMA_AUTOSUSPEND_DELAY ; 
 int /*<<< orphan*/  BAM_FIFO_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_DEV_TO_MEM ; 
 int /*<<< orphan*/  DMA_MEM_TO_DEV ; 
 int /*<<< orphan*/  DMA_RESIDUE_GRANULARITY_SEGMENT ; 
 int /*<<< orphan*/  DMA_SLAVE ; 
 void* DMA_SLAVE_BUSWIDTH_4_BYTES ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bam_alloc_chan ; 
 int /*<<< orphan*/  FUNC4 (struct bam_device*,TYPE_15__*,int) ; 
 int /*<<< orphan*/  bam_dma_irq ; 
 int /*<<< orphan*/  bam_dma_terminate_all ; 
 int /*<<< orphan*/  bam_dma_xlate ; 
 int /*<<< orphan*/  bam_free_chan ; 
 int FUNC5 (struct bam_device*) ; 
 int /*<<< orphan*/  bam_issue_pending ; 
 int /*<<< orphan*/  bam_of_match ; 
 int /*<<< orphan*/  bam_pause ; 
 int /*<<< orphan*/  bam_prep_slave_sg ; 
 int /*<<< orphan*/  bam_resume ; 
 int /*<<< orphan*/  bam_slave_config ; 
 int /*<<< orphan*/  bam_tx_status ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_2__*,struct resource*) ; 
 TYPE_15__* FUNC11 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct bam_device* FUNC12 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct bam_device*) ; 
 int FUNC14 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int FUNC18 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_tasklet ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_9__*) ; 
 struct of_device_id* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int FUNC22 (int /*<<< orphan*/ ,char*,int*) ; 
 scalar_t__ FUNC23 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC24 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct platform_device*,struct bam_device*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC35(struct platform_device *pdev)
{
	struct bam_device *bdev;
	const struct of_device_id *match;
	struct resource *iores;
	int ret, i;

	bdev = FUNC12(&pdev->dev, sizeof(*bdev), GFP_KERNEL);
	if (!bdev)
		return -ENOMEM;

	bdev->dev = &pdev->dev;

	match = FUNC20(bam_of_match, pdev->dev.of_node);
	if (!match) {
		FUNC8(&pdev->dev, "Unsupported BAM module\n");
		return -ENODEV;
	}

	bdev->layout = match->data;

	iores = FUNC24(pdev, IORESOURCE_MEM, 0);
	bdev->regs = FUNC10(&pdev->dev, iores);
	if (FUNC2(bdev->regs))
		return FUNC3(bdev->regs);

	bdev->irq = FUNC23(pdev, 0);
	if (bdev->irq < 0)
		return bdev->irq;

	ret = FUNC22(pdev->dev.of_node, "qcom,ee", &bdev->ee);
	if (ret) {
		FUNC8(bdev->dev, "Execution environment unspecified\n");
		return ret;
	}

	bdev->controlled_remotely = FUNC21(pdev->dev.of_node,
						"qcom,controlled-remotely");

	if (bdev->controlled_remotely) {
		ret = FUNC22(pdev->dev.of_node, "num-channels",
					   &bdev->num_channels);
		if (ret)
			FUNC8(bdev->dev, "num-channels unspecified in dt\n");

		ret = FUNC22(pdev->dev.of_node, "qcom,num-ees",
					   &bdev->num_ees);
		if (ret)
			FUNC8(bdev->dev, "num-ees unspecified in dt\n");
	}

	bdev->bamclk = FUNC9(bdev->dev, "bam_clk");
	if (FUNC2(bdev->bamclk)) {
		if (!bdev->controlled_remotely)
			return FUNC3(bdev->bamclk);

		bdev->bamclk = NULL;
	}

	ret = FUNC7(bdev->bamclk);
	if (ret) {
		FUNC8(bdev->dev, "failed to prepare/enable clock\n");
		return ret;
	}

	ret = FUNC5(bdev);
	if (ret)
		goto err_disable_clk;

	FUNC33(&bdev->task, dma_tasklet, (unsigned long)bdev);

	bdev->channels = FUNC11(bdev->dev, bdev->num_channels,
				sizeof(*bdev->channels), GFP_KERNEL);

	if (!bdev->channels) {
		ret = -ENOMEM;
		goto err_tasklet_kill;
	}

	/* allocate and initialize channels */
	FUNC1(&bdev->common.channels);

	for (i = 0; i < bdev->num_channels; i++)
		FUNC4(bdev, &bdev->channels[i], i);

	ret = FUNC13(bdev->dev, bdev->irq, bam_dma_irq,
			IRQF_TRIGGER_HIGH, "bam_dma", bdev);
	if (ret)
		goto err_bam_channel_exit;

	/* set max dma segment size */
	bdev->common.dev = bdev->dev;
	bdev->common.dev->dma_parms = &bdev->dma_parms;
	ret = FUNC18(bdev->common.dev, BAM_FIFO_SIZE);
	if (ret) {
		FUNC8(bdev->dev, "cannot set maximum segment size\n");
		goto err_bam_channel_exit;
	}

	FUNC25(pdev, bdev);

	/* set capabilities */
	FUNC17(bdev->common.cap_mask);
	FUNC16(DMA_SLAVE, bdev->common.cap_mask);

	/* initialize dmaengine apis */
	bdev->common.directions = FUNC0(DMA_DEV_TO_MEM) | FUNC0(DMA_MEM_TO_DEV);
	bdev->common.residue_granularity = DMA_RESIDUE_GRANULARITY_SEGMENT;
	bdev->common.src_addr_widths = DMA_SLAVE_BUSWIDTH_4_BYTES;
	bdev->common.dst_addr_widths = DMA_SLAVE_BUSWIDTH_4_BYTES;
	bdev->common.device_alloc_chan_resources = bam_alloc_chan;
	bdev->common.device_free_chan_resources = bam_free_chan;
	bdev->common.device_prep_slave_sg = bam_prep_slave_sg;
	bdev->common.device_config = bam_slave_config;
	bdev->common.device_pause = bam_pause;
	bdev->common.device_resume = bam_resume;
	bdev->common.device_terminate_all = bam_dma_terminate_all;
	bdev->common.device_issue_pending = bam_issue_pending;
	bdev->common.device_tx_status = bam_tx_status;
	bdev->common.dev = bdev->dev;

	ret = FUNC14(&bdev->common);
	if (ret) {
		FUNC8(bdev->dev, "failed to register dma async device\n");
		goto err_bam_channel_exit;
	}

	ret = FUNC19(pdev->dev.of_node, bam_dma_xlate,
					&bdev->common);
	if (ret)
		goto err_unregister_dma;

	if (bdev->controlled_remotely) {
		FUNC26(&pdev->dev);
		return 0;
	}

	FUNC28(&pdev->dev);
	FUNC31(&pdev->dev, BAM_DMA_AUTOSUSPEND_DELAY);
	FUNC32(&pdev->dev);
	FUNC29(&pdev->dev);
	FUNC30(&pdev->dev);
	FUNC27(&pdev->dev);

	return 0;

err_unregister_dma:
	FUNC15(&bdev->common);
err_bam_channel_exit:
	for (i = 0; i < bdev->num_channels; i++)
		FUNC34(&bdev->channels[i].vc.task);
err_tasklet_kill:
	FUNC34(&bdev->task);
err_disable_clk:
	FUNC6(bdev->bamclk);

	return ret;
}