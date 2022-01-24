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
struct device {int /*<<< orphan*/  msi_domain; int /*<<< orphan*/  of_node; struct device* parent; } ;
struct platform_device {struct device dev; } ;
struct mvebu_icu_msi_data {int /*<<< orphan*/ * subset_data; void* icu; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_BUS_PLATFORM_MSI ; 
 int ENODEV ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  ICU_MAX_IRQS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 void* FUNC1 (struct device*) ; 
 struct mvebu_icu_msi_data* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  legacy_bindings ; 
 int /*<<< orphan*/  mvebu_icu_domain_ops ; 
 int /*<<< orphan*/  mvebu_icu_nsr_subset_data ; 
 int /*<<< orphan*/  mvebu_icu_write_msg ; 
 int /*<<< orphan*/ * FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC6 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mvebu_icu_msi_data*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct mvebu_icu_msi_data *msi_data;
	struct device_node *msi_parent_dn;
	struct device *dev = &pdev->dev;
	struct irq_domain *irq_domain;

	msi_data = FUNC2(dev, sizeof(*msi_data), GFP_KERNEL);
	if (!msi_data)
		return -ENOMEM;

	if (FUNC7(&legacy_bindings)) {
		msi_data->icu = FUNC1(dev);
		msi_data->subset_data = &mvebu_icu_nsr_subset_data;
	} else {
		msi_data->icu = FUNC1(dev->parent);
		msi_data->subset_data = FUNC4(dev);
	}

	dev->msi_domain = FUNC5(dev, dev->of_node,
					    DOMAIN_BUS_PLATFORM_MSI);
	if (!dev->msi_domain)
		return -EPROBE_DEFER;

	msi_parent_dn = FUNC3(dev->msi_domain);
	if (!msi_parent_dn)
		return -ENODEV;

	irq_domain = FUNC6(dev, ICU_MAX_IRQS,
							    mvebu_icu_write_msg,
							    &mvebu_icu_domain_ops,
							    msi_data);
	if (!irq_domain) {
		FUNC0(dev, "Failed to create ICU MSI domain\n");
		return -ENOMEM;
	}

	return 0;
}