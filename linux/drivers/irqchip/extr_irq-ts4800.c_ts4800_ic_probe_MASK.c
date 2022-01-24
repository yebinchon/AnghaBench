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
struct irq_chip {int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; int /*<<< orphan*/  name; } ;
struct ts4800_irq_data {int /*<<< orphan*/  domain; struct irq_chip irq_chip; scalar_t__ base; } ;
struct resource {int dummy; } ;
struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ IRQ_MASK ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct resource*) ; 
 struct ts4800_irq_data* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,int,int /*<<< orphan*/ *,struct ts4800_irq_data*) ; 
 int FUNC7 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,struct ts4800_irq_data*) ; 
 struct resource* FUNC9 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct platform_device*,struct ts4800_irq_data*) ; 
 int /*<<< orphan*/  ts4800_ic_chained_handle_irq ; 
 int /*<<< orphan*/  ts4800_ic_ops ; 
 int /*<<< orphan*/  ts4800_irq_mask ; 
 int /*<<< orphan*/  ts4800_irq_unmask ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct ts4800_irq_data *data;
	struct irq_chip *irq_chip;
	struct resource *res;
	int parent_irq;

	data = FUNC5(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	res = FUNC9(pdev, IORESOURCE_MEM, 0);
	data->base = FUNC4(&pdev->dev, res);
	if (FUNC0(data->base))
		return FUNC1(data->base);

	FUNC11(0xFFFF, data->base + IRQ_MASK);

	parent_irq = FUNC7(node, 0);
	if (!parent_irq) {
		FUNC2(&pdev->dev, "failed to get parent IRQ\n");
		return -EINVAL;
	}

	irq_chip = &data->irq_chip;
	irq_chip->name = FUNC3(&pdev->dev);
	irq_chip->irq_mask = ts4800_irq_mask;
	irq_chip->irq_unmask = ts4800_irq_unmask;

	data->domain = FUNC6(node, 8, &ts4800_ic_ops, data);
	if (!data->domain) {
		FUNC2(&pdev->dev, "cannot add IRQ domain\n");
		return -ENOMEM;
	}

	FUNC8(parent_irq,
					 ts4800_ic_chained_handle_irq, data);

	FUNC10(pdev, data);

	return 0;
}