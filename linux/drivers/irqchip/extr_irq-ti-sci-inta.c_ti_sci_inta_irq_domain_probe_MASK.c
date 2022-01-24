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
struct ti_sci_inta_irq_domain {int /*<<< orphan*/  vint_mutex; int /*<<< orphan*/  vint_list; int /*<<< orphan*/ * vint; int /*<<< orphan*/ * base; int /*<<< orphan*/ * global_event; int /*<<< orphan*/ * sci; struct platform_device* pdev; } ;
struct resource {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {int /*<<< orphan*/  id; struct device dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,...) ; 
 struct device_node* FUNC4 (struct device*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device*,struct resource*) ; 
 struct ti_sci_inta_irq_domain* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (struct device*,char*) ; 
 void* FUNC8 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ ,char*) ; 
 struct irq_domain* FUNC9 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ti_sci_inta_irq_domain*) ; 
 int /*<<< orphan*/  FUNC10 (struct irq_domain*) ; 
 struct irq_domain* FUNC11 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct device_node* FUNC13 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC14 (struct device_node*) ; 
 int FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct resource* FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ti_sci_inta_irq_domain_ops ; 
 struct irq_domain* FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct irq_domain*) ; 
 int /*<<< orphan*/  ti_sci_inta_msi_domain_info ; 

__attribute__((used)) static int FUNC19(struct platform_device *pdev)
{
	struct irq_domain *parent_domain, *domain, *msi_domain;
	struct device_node *parent_node, *node;
	struct ti_sci_inta_irq_domain *inta;
	struct device *dev = &pdev->dev;
	struct resource *res;
	int ret;

	node = FUNC4(dev);
	parent_node = FUNC13(node);
	if (!parent_node) {
		FUNC3(dev, "Failed to get IRQ parent node\n");
		return -ENODEV;
	}

	parent_domain = FUNC11(parent_node);
	if (!parent_domain)
		return -EPROBE_DEFER;

	inta = FUNC6(dev, sizeof(*inta), GFP_KERNEL);
	if (!inta)
		return -ENOMEM;

	inta->pdev = pdev;
	inta->sci = FUNC7(dev, "ti,sci");
	if (FUNC1(inta->sci)) {
		ret = FUNC2(inta->sci);
		if (ret != -EPROBE_DEFER)
			FUNC3(dev, "ti,sci read fail %d\n", ret);
		inta->sci = NULL;
		return ret;
	}

	ret = FUNC15(dev->of_node, "ti,sci-dev-id", &pdev->id);
	if (ret) {
		FUNC3(dev, "missing 'ti,sci-dev-id' property\n");
		return -EINVAL;
	}

	inta->vint = FUNC8(inta->sci, dev, pdev->id,
						 "ti,sci-rm-range-vint");
	if (FUNC1(inta->vint)) {
		FUNC3(dev, "VINT resource allocation failed\n");
		return FUNC2(inta->vint);
	}

	inta->global_event = FUNC8(inta->sci, dev, pdev->id,
						"ti,sci-rm-range-global-event");
	if (FUNC1(inta->global_event)) {
		FUNC3(dev, "Global event resource allocation failed\n");
		return FUNC2(inta->global_event);
	}

	res = FUNC16(pdev, IORESOURCE_MEM, 0);
	inta->base = FUNC5(dev, res);
	if (FUNC1(inta->base))
		return -ENODEV;

	domain = FUNC9(FUNC4(dev),
				       FUNC17(inta->vint),
				       &ti_sci_inta_irq_domain_ops, inta);
	if (!domain) {
		FUNC3(dev, "Failed to allocate IRQ domain\n");
		return -ENOMEM;
	}

	msi_domain = FUNC18(FUNC14(node),
						&ti_sci_inta_msi_domain_info,
						domain);
	if (!msi_domain) {
		FUNC10(domain);
		FUNC3(dev, "Failed to allocate msi domain\n");
		return -ENOMEM;
	}

	FUNC0(&inta->vint_list);
	FUNC12(&inta->vint_mutex);

	return 0;
}