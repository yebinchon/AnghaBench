#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sti_mbox_pdata {int dummy; } ;
struct sti_mbox_device {int /*<<< orphan*/  name; TYPE_1__* dev; int /*<<< orphan*/  lock; struct mbox_controller* mbox; int /*<<< orphan*/  base; } ;
struct resource {int dummy; } ;
struct TYPE_9__ {struct sti_mbox_pdata* platform_data; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct mbox_controller {int txdone_irq; int txdone_poll; int txpoll_period; int /*<<< orphan*/  num_chans; struct mbox_chan* chans; int /*<<< orphan*/  of_xlate; TYPE_1__* dev; int /*<<< orphan*/ * ops; } ;
struct mbox_chan {int dummy; } ;
struct device_node {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STI_MBOX_CHAN_MAX ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct resource*) ; 
 struct mbox_chan* FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,struct mbox_controller*) ; 
 int FUNC8 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sti_mbox_device*) ; 
 struct of_device_id* FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct sti_mbox_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sti_mailbox_match ; 
 int /*<<< orphan*/  sti_mbox_irq_handler ; 
 int /*<<< orphan*/  sti_mbox_ops ; 
 int /*<<< orphan*/  sti_mbox_thread_handler ; 
 int /*<<< orphan*/  sti_mbox_xlate ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	const struct of_device_id *match;
	struct mbox_controller *mbox;
	struct sti_mbox_device *mdev;
	struct device_node *np = pdev->dev.of_node;
	struct mbox_chan *chans;
	struct resource *res;
	int irq;
	int ret;

	match = FUNC9(sti_mailbox_match, &pdev->dev);
	if (!match) {
		FUNC2(&pdev->dev, "No configuration found\n");
		return -ENODEV;
	}
	pdev->dev.platform_data = (struct sti_mbox_pdata *) match->data;

	mdev = FUNC6(&pdev->dev, sizeof(*mdev), GFP_KERNEL);
	if (!mdev)
		return -ENOMEM;

	FUNC13(pdev, mdev);

	res = FUNC12(pdev, IORESOURCE_MEM, 0);
	mdev->base = FUNC4(&pdev->dev, res);
	if (FUNC0(mdev->base))
		return FUNC1(mdev->base);

	ret = FUNC10(np, "mbox-name", &mdev->name);
	if (ret)
		mdev->name = np->full_name;

	mbox = FUNC6(&pdev->dev, sizeof(*mbox), GFP_KERNEL);
	if (!mbox)
		return -ENOMEM;

	chans = FUNC5(&pdev->dev,
			     STI_MBOX_CHAN_MAX, sizeof(*chans), GFP_KERNEL);
	if (!chans)
		return -ENOMEM;

	mdev->dev		= &pdev->dev;
	mdev->mbox		= mbox;

	FUNC14(&mdev->lock);

	/* STi Mailbox does not have a Tx-Done or Tx-Ready IRQ */
	mbox->txdone_irq	= false;
	mbox->txdone_poll	= true;
	mbox->txpoll_period	= 100;
	mbox->ops		= &sti_mbox_ops;
	mbox->dev		= mdev->dev;
	mbox->of_xlate		= sti_mbox_xlate;
	mbox->chans		= chans;
	mbox->num_chans		= STI_MBOX_CHAN_MAX;

	ret = FUNC7(&pdev->dev, mbox);
	if (ret)
		return ret;

	/* It's okay for Tx Mailboxes to not supply IRQs */
	irq = FUNC11(pdev, 0);
	if (irq < 0) {
		FUNC3(&pdev->dev,
			 "%s: Registered Tx only Mailbox\n", mdev->name);
		return 0;
	}

	ret = FUNC8(&pdev->dev, irq,
					sti_mbox_irq_handler,
					sti_mbox_thread_handler,
					IRQF_ONESHOT, mdev->name, mdev);
	if (ret) {
		FUNC2(&pdev->dev, "Can't claim IRQ %d\n", irq);
		return -EINVAL;
	}

	FUNC3(&pdev->dev, "%s: Registered Tx/Rx Mailbox\n", mdev->name);

	return 0;
}