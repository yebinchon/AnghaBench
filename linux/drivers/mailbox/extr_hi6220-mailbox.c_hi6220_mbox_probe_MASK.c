#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {int num_chans; int txdone_irq; int txdone_poll; int txpoll_period; int /*<<< orphan*/  of_xlate; int /*<<< orphan*/ * ops; TYPE_1__* chans; struct device* dev; } ;
struct hi6220_mbox {int chan_num; scalar_t__ irq; int tx_irq_mode; TYPE_3__ controller; void* ipc; TYPE_2__* mchan; int /*<<< orphan*/ ** irq_map_chan; TYPE_1__* chan; void* base; struct device* dev; } ;
struct device_node {int dummy; } ;
struct TYPE_5__ {int slot; struct hi6220_mbox* parent; } ;
struct TYPE_4__ {TYPE_2__* con_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC2 (void*) ; 
 int MBOX_CHAN_MAX ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 void* FUNC7 (struct device*,struct resource*) ; 
 void* FUNC8 (struct device*,int,int,int /*<<< orphan*/ ) ; 
 struct hi6220_mbox* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device*,TYPE_3__*) ; 
 int FUNC11 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hi6220_mbox*) ; 
 int /*<<< orphan*/  hi6220_mbox_interrupt ; 
 int /*<<< orphan*/  hi6220_mbox_ops ; 
 int /*<<< orphan*/  hi6220_mbox_xlate ; 
 scalar_t__ FUNC12 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct hi6220_mbox*) ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct device *dev = &pdev->dev;
	struct hi6220_mbox *mbox;
	struct resource *res;
	int i, err;

	mbox = FUNC9(dev, sizeof(*mbox), GFP_KERNEL);
	if (!mbox)
		return -ENOMEM;

	mbox->dev = dev;
	mbox->chan_num = MBOX_CHAN_MAX;
	mbox->mchan = FUNC8(dev,
		mbox->chan_num, sizeof(*mbox->mchan), GFP_KERNEL);
	if (!mbox->mchan)
		return -ENOMEM;

	mbox->chan = FUNC8(dev,
		mbox->chan_num, sizeof(*mbox->chan), GFP_KERNEL);
	if (!mbox->chan)
		return -ENOMEM;

	mbox->irq = FUNC13(pdev, 0);
	if (mbox->irq < 0)
		return mbox->irq;

	res = FUNC14(pdev, IORESOURCE_MEM, 0);
	mbox->ipc = FUNC7(dev, res);
	if (FUNC2(mbox->ipc)) {
		FUNC4(dev, "ioremap ipc failed\n");
		return FUNC3(mbox->ipc);
	}

	res = FUNC14(pdev, IORESOURCE_MEM, 1);
	mbox->base = FUNC7(dev, res);
	if (FUNC2(mbox->base)) {
		FUNC4(dev, "ioremap buffer failed\n");
		return FUNC3(mbox->base);
	}

	err = FUNC11(dev, mbox->irq, hi6220_mbox_interrupt, 0,
			FUNC6(dev), mbox);
	if (err) {
		FUNC4(dev, "Failed to register a mailbox IRQ handler: %d\n",
			err);
		return -ENODEV;
	}

	mbox->controller.dev = dev;
	mbox->controller.chans = &mbox->chan[0];
	mbox->controller.num_chans = mbox->chan_num;
	mbox->controller.ops = &hi6220_mbox_ops;
	mbox->controller.of_xlate = hi6220_mbox_xlate;

	for (i = 0; i < mbox->chan_num; i++) {
		mbox->chan[i].con_priv = &mbox->mchan[i];
		mbox->irq_map_chan[i] = NULL;

		mbox->mchan[i].parent = mbox;
		mbox->mchan[i].slot   = i;
	}

	/* mask and clear all interrupt vectors */
	FUNC16(0x0,  FUNC1(mbox->ipc));
	FUNC16(~0x0, FUNC0(mbox->ipc));

	/* use interrupt for tx's ack */
	if (FUNC12(node, "hi6220,mbox-tx-noirq", NULL))
		mbox->tx_irq_mode = false;
	else
		mbox->tx_irq_mode = true;

	if (mbox->tx_irq_mode)
		mbox->controller.txdone_irq = true;
	else {
		mbox->controller.txdone_poll = true;
		mbox->controller.txpoll_period = 5;
	}

	err = FUNC10(dev, &mbox->controller);
	if (err) {
		FUNC4(dev, "Failed to register mailbox %d\n", err);
		return err;
	}

	FUNC15(pdev, mbox);
	FUNC5(dev, "Mailbox enabled\n");
	return 0;
}