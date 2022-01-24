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
typedef  int /*<<< orphan*/  u32 ;
struct irq_chip {int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_set_affinity; int /*<<< orphan*/  irq_eoi; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; void* name; } ;
struct gpio_chip {int base; int /*<<< orphan*/  ngpio; int /*<<< orphan*/  to_irq; int /*<<< orphan*/  set_multiple; int /*<<< orphan*/  set; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  free; int /*<<< orphan*/  request; struct device* parent; void* label; } ;
struct uniphier_gpio_priv {int /*<<< orphan*/  domain; struct irq_chip irq_chip; struct gpio_chip chip; int /*<<< orphan*/  lock; int /*<<< orphan*/  regs; } ;
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
 int /*<<< orphan*/  UNIPHIER_GPIO_IRQ_MAX_NUM ; 
 void* FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,struct gpio_chip*,struct uniphier_gpio_priv*) ; 
 struct uniphier_gpio_priv* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gpiochip_generic_free ; 
 int /*<<< orphan*/  gpiochip_generic_request ; 
 int /*<<< orphan*/  irq_chip_eoi_parent ; 
 int /*<<< orphan*/  irq_chip_set_affinity_parent ; 
 int /*<<< orphan*/  FUNC6 (struct irq_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct uniphier_gpio_priv*) ; 
 struct irq_domain* FUNC7 (struct device_node*) ; 
 struct device_node* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct uniphier_gpio_priv*) ; 
 int /*<<< orphan*/  saved_vals ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct uniphier_gpio_priv*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  uniphier_gpio_direction_input ; 
 int /*<<< orphan*/  uniphier_gpio_direction_output ; 
 int /*<<< orphan*/  uniphier_gpio_get ; 
 int /*<<< orphan*/  uniphier_gpio_get_direction ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct uniphier_gpio_priv*) ; 
 int /*<<< orphan*/  uniphier_gpio_irq_domain_ops ; 
 int /*<<< orphan*/  uniphier_gpio_irq_mask ; 
 int /*<<< orphan*/  uniphier_gpio_irq_set_type ; 
 int /*<<< orphan*/  uniphier_gpio_irq_unmask ; 
 int /*<<< orphan*/  uniphier_gpio_set ; 
 int /*<<< orphan*/  uniphier_gpio_set_multiple ; 
 int /*<<< orphan*/  uniphier_gpio_to_irq ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *parent_np;
	struct irq_domain *parent_domain;
	struct uniphier_gpio_priv *priv;
	struct gpio_chip *chip;
	struct irq_chip *irq_chip;
	unsigned int nregs;
	u32 ngpios;
	int ret;

	parent_np = FUNC8(dev->of_node);
	if (!parent_np)
		return -ENXIO;

	parent_domain = FUNC7(parent_np);
	FUNC9(parent_np);
	if (!parent_domain)
		return -EPROBE_DEFER;

	ret = FUNC11(dev->of_node, "ngpios", &ngpios);
	if (ret)
		return ret;

	nregs = FUNC15(ngpios) * 2 + 3;
	priv = FUNC4(dev, FUNC14(priv, saved_vals, nregs),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->regs = FUNC5(pdev, 0);
	if (FUNC0(priv->regs))
		return FUNC1(priv->regs);

	FUNC13(&priv->lock);

	chip = &priv->chip;
	chip->label = FUNC2(dev);
	chip->parent = dev;
	chip->request = gpiochip_generic_request;
	chip->free = gpiochip_generic_free;
	chip->get_direction = uniphier_gpio_get_direction;
	chip->direction_input = uniphier_gpio_direction_input;
	chip->direction_output = uniphier_gpio_direction_output;
	chip->get = uniphier_gpio_get;
	chip->set = uniphier_gpio_set;
	chip->set_multiple = uniphier_gpio_set_multiple;
	chip->to_irq = uniphier_gpio_to_irq;
	chip->base = -1;
	chip->ngpio = ngpios;

	irq_chip = &priv->irq_chip;
	irq_chip->name = FUNC2(dev);
	irq_chip->irq_mask = uniphier_gpio_irq_mask;
	irq_chip->irq_unmask = uniphier_gpio_irq_unmask;
	irq_chip->irq_eoi = irq_chip_eoi_parent;
	irq_chip->irq_set_affinity = irq_chip_set_affinity_parent;
	irq_chip->irq_set_type = uniphier_gpio_irq_set_type;

	FUNC16(priv);

	ret = FUNC3(dev, chip, priv);
	if (ret)
		return ret;

	priv->domain = FUNC6(
					parent_domain, 0,
					UNIPHIER_GPIO_IRQ_MAX_NUM,
					FUNC10(dev->of_node),
					&uniphier_gpio_irq_domain_ops, priv);
	if (!priv->domain)
		return -ENOMEM;

	FUNC12(pdev, priv);

	return 0;
}