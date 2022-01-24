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
struct irq_domain {struct irq_domain* parent; } ;
struct device_node {int dummy; } ;
struct alpine_msix_data {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  alpine_msix_domain_info ; 
 int /*<<< orphan*/  alpine_msix_middle_domain_ops ; 
 struct irq_domain* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct alpine_msix_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_domain*) ; 
 struct irq_domain* FUNC2 (struct device_node*) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct irq_domain* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct irq_domain*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct alpine_msix_data *priv,
				    struct device_node *node)
{
	struct irq_domain *middle_domain, *msi_domain, *gic_domain;
	struct device_node *gic_node;

	gic_node = FUNC3(node);
	if (!gic_node) {
		FUNC6("Failed to find the GIC node\n");
		return -ENODEV;
	}

	gic_domain = FUNC2(gic_node);
	if (!gic_domain) {
		FUNC6("Failed to find the GIC domain\n");
		return -ENXIO;
	}

	middle_domain = FUNC0(NULL,
					    &alpine_msix_middle_domain_ops,
					    priv);
	if (!middle_domain) {
		FUNC6("Failed to create the MSIX middle domain\n");
		return -ENOMEM;
	}

	middle_domain->parent = gic_domain;

	msi_domain = FUNC5(FUNC4(node),
					       &alpine_msix_domain_info,
					       middle_domain);
	if (!msi_domain) {
		FUNC6("Failed to create MSI domain\n");
		FUNC1(middle_domain);
		return -ENOMEM;
	}

	return 0;
}