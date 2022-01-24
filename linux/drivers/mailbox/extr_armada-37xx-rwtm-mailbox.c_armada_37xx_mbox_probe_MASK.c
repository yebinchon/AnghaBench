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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mbox_chan {struct a37xx_mbox* con_priv; } ;
struct TYPE_2__ {int num_chans; int txdone_irq; int /*<<< orphan*/ * ops; struct mbox_chan* chans; int /*<<< orphan*/ * dev; } ;
struct a37xx_mbox {scalar_t__ irq; TYPE_1__ controller; int /*<<< orphan*/ * dev; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  a37xx_mbox_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct resource*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct a37xx_mbox*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct a37xx_mbox *mbox;
	struct resource *regs;
	struct mbox_chan *chans;
	int ret;

	mbox = FUNC4(&pdev->dev, sizeof(*mbox), GFP_KERNEL);
	if (!mbox)
		return -ENOMEM;

	/* Allocated one channel */
	chans = FUNC4(&pdev->dev, sizeof(*chans), GFP_KERNEL);
	if (!chans)
		return -ENOMEM;

	regs = FUNC7(pdev, IORESOURCE_MEM, 0);

	mbox->base = FUNC3(&pdev->dev, regs);
	if (FUNC0(mbox->base)) {
		FUNC2(&pdev->dev, "ioremap failed\n");
		return FUNC1(mbox->base);
	}

	mbox->irq = FUNC6(pdev, 0);
	if (mbox->irq < 0) {
		FUNC2(&pdev->dev, "Cannot get irq\n");
		return mbox->irq;
	}

	mbox->dev = &pdev->dev;

	/* Hardware supports only one channel. */
	chans[0].con_priv = mbox;
	mbox->controller.dev = mbox->dev;
	mbox->controller.num_chans = 1;
	mbox->controller.chans = chans;
	mbox->controller.ops = &a37xx_mbox_ops;
	mbox->controller.txdone_irq = true;

	ret = FUNC5(mbox->dev, &mbox->controller);
	if (ret) {
		FUNC2(&pdev->dev, "Could not register mailbox controller\n");
		return ret;
	}

	FUNC8(pdev, mbox);
	return ret;
}