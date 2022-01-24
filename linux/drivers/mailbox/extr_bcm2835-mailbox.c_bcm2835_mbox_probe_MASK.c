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
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int txdone_poll; int txpoll_period; int num_chans; void* chans; struct device* dev; int /*<<< orphan*/ * of_xlate; int /*<<< orphan*/ * ops; } ;
struct bcm2835_mbox {TYPE_1__ controller; int /*<<< orphan*/  regs; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcm2835_mbox_chan_ops ; 
 int /*<<< orphan*/  bcm2835_mbox_index_xlate ; 
 int /*<<< orphan*/  bcm2835_mbox_irq ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,struct resource*) ; 
 void* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*,TYPE_1__*) ; 
 int FUNC8 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bcm2835_mbox*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct resource* FUNC10 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct bcm2835_mbox*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	int ret = 0;
	struct resource *iomem;
	struct bcm2835_mbox *mbox;

	mbox = FUNC6(dev, sizeof(*mbox), GFP_KERNEL);
	if (mbox == NULL)
		return -ENOMEM;
	FUNC12(&mbox->lock);

	ret = FUNC8(dev, FUNC9(dev->of_node, 0),
			       bcm2835_mbox_irq, 0, FUNC4(dev), mbox);
	if (ret) {
		FUNC2(dev, "Failed to register a mailbox IRQ handler: %d\n",
			ret);
		return -ENODEV;
	}

	iomem = FUNC10(pdev, IORESOURCE_MEM, 0);
	mbox->regs = FUNC5(&pdev->dev, iomem);
	if (FUNC0(mbox->regs)) {
		ret = FUNC1(mbox->regs);
		FUNC2(&pdev->dev, "Failed to remap mailbox regs: %d\n", ret);
		return ret;
	}

	mbox->controller.txdone_poll = true;
	mbox->controller.txpoll_period = 5;
	mbox->controller.ops = &bcm2835_mbox_chan_ops;
	mbox->controller.of_xlate = &bcm2835_mbox_index_xlate;
	mbox->controller.dev = dev;
	mbox->controller.num_chans = 1;
	mbox->controller.chans = FUNC6(dev,
		sizeof(*mbox->controller.chans), GFP_KERNEL);
	if (!mbox->controller.chans)
		return -ENOMEM;

	ret = FUNC7(dev, &mbox->controller);
	if (ret)
		return ret;

	FUNC11(pdev, mbox);
	FUNC3(dev, "mailbox enabled\n");

	return ret;
}