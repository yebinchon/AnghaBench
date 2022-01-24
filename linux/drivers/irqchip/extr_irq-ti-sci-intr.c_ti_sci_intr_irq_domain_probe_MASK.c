#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ti_sci_intr_irq_domain {int /*<<< orphan*/ * dst_irq; int /*<<< orphan*/  dst_id; int /*<<< orphan*/ * sci; int /*<<< orphan*/  type; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 struct ti_sci_intr_irq_domain* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ,char*) ; 
 struct irq_domain* FUNC7 (struct irq_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ti_sci_intr_irq_domain*) ; 
 struct irq_domain* FUNC8 (struct device_node*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ti_sci_intr_irq_domain_ops ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct irq_domain *parent_domain, *domain;
	struct ti_sci_intr_irq_domain *intr;
	struct device_node *parent_node;
	struct device *dev = &pdev->dev;
	int ret;

	parent_node = FUNC9(FUNC3(dev));
	if (!parent_node) {
		FUNC2(dev, "Failed to get IRQ parent node\n");
		return -ENODEV;
	}

	parent_domain = FUNC8(parent_node);
	if (!parent_domain) {
		FUNC2(dev, "Failed to find IRQ parent domain\n");
		return -ENODEV;
	}

	intr = FUNC4(dev, sizeof(*intr), GFP_KERNEL);
	if (!intr)
		return -ENOMEM;

	ret = FUNC10(FUNC3(dev), "ti,intr-trigger-type",
				   &intr->type);
	if (ret) {
		FUNC2(dev, "missing ti,intr-trigger-type property\n");
		return -EINVAL;
	}

	intr->sci = FUNC5(dev, "ti,sci");
	if (FUNC0(intr->sci)) {
		ret = FUNC1(intr->sci);
		if (ret != -EPROBE_DEFER)
			FUNC2(dev, "ti,sci read fail %d\n", ret);
		intr->sci = NULL;
		return ret;
	}

	ret = FUNC10(FUNC3(dev), "ti,sci-dst-id",
				   &intr->dst_id);
	if (ret) {
		FUNC2(dev, "missing 'ti,sci-dst-id' property\n");
		return -EINVAL;
	}

	intr->dst_irq = FUNC6(intr->sci, dev,
						    intr->dst_id,
						    "ti,sci-rm-range-girq");
	if (FUNC0(intr->dst_irq)) {
		FUNC2(dev, "Destination irq resource allocation failed\n");
		return FUNC1(intr->dst_irq);
	}

	domain = FUNC7(parent_domain, 0, 0, FUNC3(dev),
					  &ti_sci_intr_irq_domain_ops, intr);
	if (!domain) {
		FUNC2(dev, "Failed to allocate IRQ domain\n");
		return -ENOMEM;
	}

	return 0;
}