#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct irq_chip {int /*<<< orphan*/  irq_eoi; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  name; } ;
struct mvebu_pic {scalar_t__ parent_irq; int /*<<< orphan*/  domain; struct irq_chip irq_chip; int /*<<< orphan*/  base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIC_MAX_IRQS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct resource*) ; 
 struct mvebu_pic* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mvebu_pic*) ; 
 scalar_t__ FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,struct mvebu_pic*) ; 
 int /*<<< orphan*/  mvebu_pic_domain_ops ; 
 int /*<<< orphan*/  mvebu_pic_enable_percpu_irq ; 
 int /*<<< orphan*/  mvebu_pic_eoi_irq ; 
 int /*<<< orphan*/  mvebu_pic_handle_cascade_irq ; 
 int /*<<< orphan*/  mvebu_pic_mask_irq ; 
 int /*<<< orphan*/  mvebu_pic_unmask_irq ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct mvebu_pic*,int) ; 
 struct resource* FUNC11 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct mvebu_pic*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct mvebu_pic *pic;
	struct irq_chip *irq_chip;
	struct resource *res;

	pic = FUNC5(&pdev->dev, sizeof(struct mvebu_pic), GFP_KERNEL);
	if (!pic)
		return -ENOMEM;

	res = FUNC11(pdev, IORESOURCE_MEM, 0);
	pic->base = FUNC4(&pdev->dev, res);
	if (FUNC0(pic->base))
		return FUNC1(pic->base);

	irq_chip = &pic->irq_chip;
	irq_chip->name = FUNC3(&pdev->dev);
	irq_chip->irq_mask = mvebu_pic_mask_irq;
	irq_chip->irq_unmask = mvebu_pic_unmask_irq;
	irq_chip->irq_eoi = mvebu_pic_eoi_irq;

	pic->parent_irq = FUNC7(node, 0);
	if (pic->parent_irq <= 0) {
		FUNC2(&pdev->dev, "Failed to parse parent interrupt\n");
		return -EINVAL;
	}

	pic->domain = FUNC6(node, PIC_MAX_IRQS,
					    &mvebu_pic_domain_ops, pic);
	if (!pic->domain) {
		FUNC2(&pdev->dev, "Failed to allocate irq domain\n");
		return -ENOMEM;
	}

	FUNC8(pic->parent_irq, mvebu_pic_handle_cascade_irq);
	FUNC9(pic->parent_irq, pic);

	FUNC10(mvebu_pic_enable_percpu_irq, pic, 1);

	FUNC12(pdev, pic);

	return 0;
}