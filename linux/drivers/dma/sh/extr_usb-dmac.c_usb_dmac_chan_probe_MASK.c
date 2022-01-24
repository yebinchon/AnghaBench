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
struct TYPE_2__ {int /*<<< orphan*/  desc_free; } ;
struct usb_dmac_chan {unsigned int index; int /*<<< orphan*/  desc_got; int /*<<< orphan*/  desc_freed; TYPE_1__ vc; int /*<<< orphan*/  irq; scalar_t__ iomem; } ;
struct usb_dmac {int /*<<< orphan*/  engine; int /*<<< orphan*/  dev; scalar_t__ iomem; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct usb_dmac_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,unsigned int) ; 
 struct platform_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_dmac_isr_channel ; 
 int /*<<< orphan*/  usb_dmac_virt_desc_free ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct usb_dmac *dmac,
			       struct usb_dmac_chan *uchan,
			       unsigned int index)
{
	struct platform_device *pdev = FUNC8(dmac->dev);
	char pdev_irqname[5];
	char *irqname;
	int ret;

	uchan->index = index;
	uchan->iomem = dmac->iomem + FUNC1(index);

	/* Request the channel interrupt. */
	FUNC7(pdev_irqname, "ch%u", index);
	uchan->irq = FUNC6(pdev, pdev_irqname);
	if (uchan->irq < 0)
		return -ENODEV;

	irqname = FUNC4(dmac->dev, GFP_KERNEL, "%s:%u",
				 FUNC3(dmac->dev), index);
	if (!irqname)
		return -ENOMEM;

	ret = FUNC5(dmac->dev, uchan->irq, usb_dmac_isr_channel,
			       IRQF_SHARED, irqname, uchan);
	if (ret) {
		FUNC2(dmac->dev, "failed to request IRQ %u (%d)\n",
			uchan->irq, ret);
		return ret;
	}

	uchan->vc.desc_free = usb_dmac_virt_desc_free;
	FUNC9(&uchan->vc, &dmac->engine);
	FUNC0(&uchan->desc_freed);
	FUNC0(&uchan->desc_got);

	return 0;
}