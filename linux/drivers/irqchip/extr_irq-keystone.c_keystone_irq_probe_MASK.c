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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  irq_ack; } ;
struct keystone_irq_device {scalar_t__ irq; int mask; int /*<<< orphan*/  irqd; int /*<<< orphan*/  wa_lock; TYPE_1__ chip; struct device* dev; int /*<<< orphan*/  devctrl_offset; int /*<<< orphan*/  devctrl_regs; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEYSTONE_N_IRQ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 struct keystone_irq_device* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct keystone_irq_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keystone_irq_ack ; 
 int /*<<< orphan*/  keystone_irq_handler ; 
 int /*<<< orphan*/  keystone_irq_ops ; 
 int /*<<< orphan*/  keystone_irq_setmask ; 
 int /*<<< orphan*/  keystone_irq_unmask ; 
 int /*<<< orphan*/  FUNC8 (struct keystone_irq_device*,int) ; 
 int FUNC9 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*,struct keystone_irq_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct keystone_irq_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct keystone_irq_device *kirq;
	int ret;

	if (np == NULL)
		return -EINVAL;

	kirq = FUNC5(dev, sizeof(*kirq), GFP_KERNEL);
	if (!kirq)
		return -ENOMEM;

	kirq->devctrl_regs =
		FUNC14(np, "ti,syscon-dev");
	if (FUNC0(kirq->devctrl_regs))
		return FUNC1(kirq->devctrl_regs);

	ret = FUNC9(np, "ti,syscon-dev", 1,
					 &kirq->devctrl_offset);
	if (ret) {
		FUNC2(dev, "couldn't read the devctrl_offset offset!\n");
		return ret;
	}

	kirq->irq = FUNC10(pdev, 0);
	if (kirq->irq < 0)
		return kirq->irq;

	kirq->dev = dev;
	kirq->mask = ~0x0;
	kirq->chip.name		= "keystone-irq";
	kirq->chip.irq_ack	= keystone_irq_ack;
	kirq->chip.irq_mask	= keystone_irq_setmask;
	kirq->chip.irq_unmask	= keystone_irq_unmask;

	kirq->irqd = FUNC6(np, KEYSTONE_N_IRQ,
					   &keystone_irq_ops, kirq);
	if (!kirq->irqd) {
		FUNC2(dev, "IRQ domain registration failed\n");
		return -ENODEV;
	}

	FUNC12(&kirq->wa_lock);

	FUNC11(pdev, kirq);

	ret = FUNC13(kirq->irq, keystone_irq_handler,
			  0, FUNC4(dev), kirq);
	if (ret) {
		FUNC7(kirq->irqd);
		return ret;
	}

	/* clear all source bits */
	FUNC8(kirq, ~0x0);

	FUNC3(dev, "irqchip registered, nr_irqs %u\n", KEYSTONE_N_IRQ);

	return 0;
}