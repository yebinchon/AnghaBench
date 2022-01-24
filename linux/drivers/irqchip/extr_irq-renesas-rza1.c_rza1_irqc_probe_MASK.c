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
struct TYPE_2__ {char* name; int flags; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_retrigger; int /*<<< orphan*/  irq_eoi; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; } ;
struct rza1_irqc_priv {int /*<<< orphan*/  irq_domain; TYPE_1__ chip; int /*<<< orphan*/  base; struct device* dev; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IRQCHIP_MASK_ON_SUSPEND ; 
 int IRQCHIP_SKIP_SET_WAKE ; 
 int /*<<< orphan*/  IRQC_NUM_IRQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 struct rza1_irqc_priv* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  irq_chip_mask_parent ; 
 int /*<<< orphan*/  irq_chip_retrigger_hierarchy ; 
 int /*<<< orphan*/  irq_chip_unmask_parent ; 
 int /*<<< orphan*/  FUNC5 (struct irq_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device_node*,int /*<<< orphan*/ *,struct rza1_irqc_priv*) ; 
 struct irq_domain* FUNC6 (struct device_node*) ; 
 struct device_node* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct rza1_irqc_priv*) ; 
 int /*<<< orphan*/  rza1_irqc_domain_ops ; 
 int /*<<< orphan*/  rza1_irqc_eoi ; 
 int FUNC10 (struct rza1_irqc_priv*,struct device_node*) ; 
 int /*<<< orphan*/  rza1_irqc_set_type ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	struct irq_domain *parent = NULL;
	struct device_node *gic_node;
	struct rza1_irqc_priv *priv;
	int ret;

	priv = FUNC3(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	FUNC9(pdev, priv);
	priv->dev = dev;

	priv->base = FUNC4(pdev, 0);
	if (FUNC0(priv->base))
		return FUNC1(priv->base);

	gic_node = FUNC7(np);
	if (gic_node)
		parent = FUNC6(gic_node);

	if (!parent) {
		FUNC2(dev, "cannot find parent domain\n");
		ret = -ENODEV;
		goto out_put_node;
	}

	ret = FUNC10(priv, gic_node);
	if (ret) {
		FUNC2(dev, "cannot parse %s: %d\n", "interrupt-map", ret);
		goto out_put_node;
	}

	priv->chip.name = "rza1-irqc",
	priv->chip.irq_mask = irq_chip_mask_parent,
	priv->chip.irq_unmask = irq_chip_unmask_parent,
	priv->chip.irq_eoi = rza1_irqc_eoi,
	priv->chip.irq_retrigger = irq_chip_retrigger_hierarchy,
	priv->chip.irq_set_type = rza1_irqc_set_type,
	priv->chip.flags = IRQCHIP_MASK_ON_SUSPEND | IRQCHIP_SKIP_SET_WAKE;

	priv->irq_domain = FUNC5(parent, 0, IRQC_NUM_IRQ,
						    np, &rza1_irqc_domain_ops,
						    priv);
	if (!priv->irq_domain) {
		FUNC2(dev, "cannot initialize irq domain\n");
		ret = -ENOMEM;
	}

out_put_node:
	FUNC8(gic_node);
	return ret;
}