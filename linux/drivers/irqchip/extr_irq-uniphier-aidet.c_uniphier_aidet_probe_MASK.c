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
struct uniphier_aidet_priv {int /*<<< orphan*/  domain; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg_base; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNIPHIER_AIDET_NR_IRQS ; 
 struct uniphier_aidet_priv* FUNC2 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct irq_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct uniphier_aidet_priv*) ; 
 struct irq_domain* FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct uniphier_aidet_priv*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uniphier_aidet_domain_ops ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *parent_np;
	struct irq_domain *parent_domain;
	struct uniphier_aidet_priv *priv;

	parent_np = FUNC6(dev->of_node);
	if (!parent_np)
		return -ENXIO;

	parent_domain = FUNC5(parent_np);
	FUNC7(parent_np);
	if (!parent_domain)
		return -EPROBE_DEFER;

	priv = FUNC2(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->reg_base = FUNC3(pdev, 0);
	if (FUNC0(priv->reg_base))
		return FUNC1(priv->reg_base);

	FUNC10(&priv->lock);

	priv->domain = FUNC4(
					parent_domain, 0,
					UNIPHIER_AIDET_NR_IRQS,
					FUNC8(dev->of_node),
					&uniphier_aidet_domain_ops, priv);
	if (!priv->domain)
		return -ENOMEM;

	FUNC9(pdev, priv);

	return 0;
}