#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct rockchip_mbox_data {int num_chans; } ;
struct TYPE_13__ {int num_chans; int txdone_irq; int /*<<< orphan*/ * ops; TYPE_2__* dev; void* chans; } ;
struct rockchip_mbox {size_t buf_size; TYPE_4__ mbox; TYPE_1__* chans; int /*<<< orphan*/  pclk; int /*<<< orphan*/  mbox_base; } ;
struct resource {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_2__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct TYPE_11__ {int idx; int irq; int /*<<< orphan*/ * msg; struct rockchip_mbox* mb; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,struct resource*) ; 
 void* FUNC7 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 struct rockchip_mbox* FUNC8 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,TYPE_4__*) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rockchip_mbox*) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,int) ; 
 struct resource* FUNC13 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct platform_device*,struct rockchip_mbox*) ; 
 scalar_t__ FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  rockchip_mbox_chan_ops ; 
 int /*<<< orphan*/  rockchip_mbox_irq ; 
 int /*<<< orphan*/  rockchip_mbox_isr ; 
 int /*<<< orphan*/  rockchip_mbox_of_match ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct rockchip_mbox *mb;
	const struct of_device_id *match;
	const struct rockchip_mbox_data *drv_data;
	struct resource *res;
	int ret, irq, i;

	if (!pdev->dev.of_node)
		return -ENODEV;

	match = FUNC11(rockchip_mbox_of_match, pdev->dev.of_node);
	drv_data = (const struct rockchip_mbox_data *)match->data;

	mb = FUNC8(&pdev->dev, sizeof(*mb), GFP_KERNEL);
	if (!mb)
		return -ENOMEM;

	mb->chans = FUNC7(&pdev->dev, drv_data->num_chans,
				 sizeof(*mb->chans), GFP_KERNEL);
	if (!mb->chans)
		return -ENOMEM;

	mb->mbox.chans = FUNC7(&pdev->dev, drv_data->num_chans,
				      sizeof(*mb->mbox.chans), GFP_KERNEL);
	if (!mb->mbox.chans)
		return -ENOMEM;

	FUNC14(pdev, mb);

	mb->mbox.dev = &pdev->dev;
	mb->mbox.num_chans = drv_data->num_chans;
	mb->mbox.ops = &rockchip_mbox_chan_ops;
	mb->mbox.txdone_irq = true;

	res = FUNC13(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;

	mb->mbox_base = FUNC6(&pdev->dev, res);
	if (FUNC0(mb->mbox_base))
		return FUNC1(mb->mbox_base);

	/* Each channel has two buffers for A2B and B2A */
	mb->buf_size = (size_t)FUNC15(res) / (drv_data->num_chans * 2);

	mb->pclk = FUNC5(&pdev->dev, "pclk_mailbox");
	if (FUNC0(mb->pclk)) {
		ret = FUNC1(mb->pclk);
		FUNC3(&pdev->dev, "failed to get pclk_mailbox clock: %d\n",
			ret);
		return ret;
	}

	ret = FUNC2(mb->pclk);
	if (ret) {
		FUNC3(&pdev->dev, "failed to enable pclk: %d\n", ret);
		return ret;
	}

	for (i = 0; i < mb->mbox.num_chans; i++) {
		irq = FUNC12(pdev, i);
		if (irq < 0)
			return irq;

		ret = FUNC10(&pdev->dev, irq,
						rockchip_mbox_irq,
						rockchip_mbox_isr, IRQF_ONESHOT,
						FUNC4(&pdev->dev), mb);
		if (ret < 0)
			return ret;

		mb->chans[i].idx = i;
		mb->chans[i].irq = irq;
		mb->chans[i].mb = mb;
		mb->chans[i].msg = NULL;
	}

	ret = FUNC9(&pdev->dev, &mb->mbox);
	if (ret < 0)
		FUNC3(&pdev->dev, "Failed to register mailbox: %d\n", ret);

	return ret;
}