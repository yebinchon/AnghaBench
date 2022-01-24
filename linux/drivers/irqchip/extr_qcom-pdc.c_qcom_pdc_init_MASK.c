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
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  PDC_MAX_IRQS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC1 (struct irq_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct irq_domain* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pdc_base ; 
 int /*<<< orphan*/  pdc_region ; 
 int FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct device_node*) ; 
 int /*<<< orphan*/  qcom_pdc_ops ; 

__attribute__((used)) static int FUNC8(struct device_node *node, struct device_node *parent)
{
	struct irq_domain *parent_domain, *pdc_domain;
	int ret;

	pdc_base = FUNC5(node, 0);
	if (!pdc_base) {
		FUNC7("%pOF: unable to map PDC registers\n", node);
		return -ENXIO;
	}

	parent_domain = FUNC2(parent);
	if (!parent_domain) {
		FUNC7("%pOF: unable to find PDC's parent domain\n", node);
		ret = -ENXIO;
		goto fail;
	}

	ret = FUNC6(node);
	if (ret) {
		FUNC7("%pOF: failed to init PDC pin-hwirq mapping\n", node);
		goto fail;
	}

	pdc_domain = FUNC1(parent_domain, 0, PDC_MAX_IRQS,
						 FUNC4(node),
						 &qcom_pdc_ops, NULL);
	if (!pdc_domain) {
		FUNC7("%pOF: GIC domain add failed\n", node);
		ret = -ENOMEM;
		goto fail;
	}

	return 0;

fail:
	FUNC3(pdc_region);
	FUNC0(pdc_base);
	return ret;
}