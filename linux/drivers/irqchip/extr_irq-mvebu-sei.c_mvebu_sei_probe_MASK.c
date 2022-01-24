#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_4__ dev; } ;
struct mvebu_sei {void* sei_domain; void* ap_domain; void* cp_domain; TYPE_3__* caps; TYPE_4__* dev; int /*<<< orphan*/  base; int /*<<< orphan*/  res; int /*<<< orphan*/  mask_lock; int /*<<< orphan*/  cp_msi_lock; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {scalar_t__ size; } ;
struct TYPE_8__ {scalar_t__ size; } ;
struct TYPE_10__ {TYPE_2__ cp_range; TYPE_1__ ap_range; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMAIN_BUS_GENERIC_MSI ; 
 int /*<<< orphan*/  DOMAIN_BUS_NEXUS ; 
 int /*<<< orphan*/  DOMAIN_BUS_WIRED ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 struct mvebu_sei* FUNC4 (TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 void* FUNC6 (void*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mvebu_sei*) ; 
 void* FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,struct mvebu_sei*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ,struct mvebu_sei*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mvebu_sei_ap_domain_ops ; 
 int /*<<< orphan*/  mvebu_sei_cp_domain_ops ; 
 int /*<<< orphan*/  mvebu_sei_domain_ops ; 
 int /*<<< orphan*/  mvebu_sei_handle_cascade_irq ; 
 int /*<<< orphan*/  mvebu_sei_msi_domain_info ; 
 int /*<<< orphan*/  FUNC13 (struct mvebu_sei*) ; 
 TYPE_3__* FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC16 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct irq_domain* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct irq_domain *plat_domain;
	struct mvebu_sei *sei;
	u32 parent_irq;
	int ret;

	sei = FUNC4(&pdev->dev, sizeof(*sei), GFP_KERNEL);
	if (!sei)
		return -ENOMEM;

	sei->dev = &pdev->dev;

	FUNC12(&sei->cp_msi_lock);
	FUNC19(&sei->mask_lock);

	sei->res = FUNC16(pdev, IORESOURCE_MEM, 0);
	sei->base = FUNC3(sei->dev, sei->res);
	if (FUNC0(sei->base)) {
		FUNC2(sei->dev, "Failed to remap SEI resource\n");
		return FUNC1(sei->base);
	}

	/* Retrieve the SEI capabilities with the interrupt ranges */
	sei->caps = FUNC14(&pdev->dev);
	if (!sei->caps) {
		FUNC2(sei->dev,
			"Could not retrieve controller capabilities\n");
		return -EINVAL;
	}

	/*
	 * Reserve the single (top-level) parent SPI IRQ from which all the
	 * interrupts handled by this driver will be signaled.
	 */
	parent_irq = FUNC10(node, 0);
	if (parent_irq <= 0) {
		FUNC2(sei->dev, "Failed to retrieve top-level SPI IRQ\n");
		return -ENODEV;
	}

	/* Create the root SEI domain */
	sei->sei_domain = FUNC7(FUNC15(node),
						   (sei->caps->ap_range.size +
						    sei->caps->cp_range.size),
						   &mvebu_sei_domain_ops,
						   sei);
	if (!sei->sei_domain) {
		FUNC2(sei->dev, "Failed to create SEI IRQ domain\n");
		ret = -ENOMEM;
		goto dispose_irq;
	}

	FUNC9(sei->sei_domain, DOMAIN_BUS_NEXUS);

	/* Create the 'wired' domain */
	sei->ap_domain = FUNC6(sei->sei_domain, 0,
						     sei->caps->ap_range.size,
						     FUNC15(node),
						     &mvebu_sei_ap_domain_ops,
						     sei);
	if (!sei->ap_domain) {
		FUNC2(sei->dev, "Failed to create AP IRQ domain\n");
		ret = -ENOMEM;
		goto remove_sei_domain;
	}

	FUNC9(sei->ap_domain, DOMAIN_BUS_WIRED);

	/* Create the 'MSI' domain */
	sei->cp_domain = FUNC6(sei->sei_domain, 0,
						     sei->caps->cp_range.size,
						     FUNC15(node),
						     &mvebu_sei_cp_domain_ops,
						     sei);
	if (!sei->cp_domain) {
		FUNC18("Failed to create CPs IRQ domain\n");
		ret = -ENOMEM;
		goto remove_ap_domain;
	}

	FUNC9(sei->cp_domain, DOMAIN_BUS_GENERIC_MSI);

	plat_domain = FUNC17(FUNC15(node),
						     &mvebu_sei_msi_domain_info,
						     sei->cp_domain);
	if (!plat_domain) {
		FUNC18("Failed to create CPs MSI domain\n");
		ret = -ENOMEM;
		goto remove_cp_domain;
	}

	FUNC13(sei);

	FUNC11(parent_irq,
					 mvebu_sei_handle_cascade_irq,
					 sei);

	return 0;

remove_cp_domain:
	FUNC8(sei->cp_domain);
remove_ap_domain:
	FUNC8(sei->ap_domain);
remove_sei_domain:
	FUNC8(sei->sei_domain);
dispose_irq:
	FUNC5(parent_irq);

	return ret;
}