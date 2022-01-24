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
struct resource {int dummy; } ;
struct lpc18xx_gpio_pin_ic {int /*<<< orphan*/  base; int /*<<< orphan*/  domain; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {struct device* parent; } ;
struct lpc18xx_gpio_chip {struct lpc18xx_gpio_pin_ic* pin_ic; TYPE_1__ gpio; } ;
struct irq_domain {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NR_LPC18XX_GPIO_PIN_IC_IRQS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,struct lpc18xx_gpio_pin_ic*) ; 
 struct lpc18xx_gpio_pin_ic* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct irq_domain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct lpc18xx_gpio_pin_ic*) ; 
 struct irq_domain* FUNC7 (struct device_node*) ; 
 int /*<<< orphan*/  lpc18xx_gpio_pin_ic_domain_ops ; 
 int FUNC8 (int /*<<< orphan*/ ,int,struct resource*) ; 
 struct device_node* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct device_node*) ; 
 int FUNC11 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct lpc18xx_gpio_chip *gc)
{
	struct device *dev = gc->gpio.parent;
	struct irq_domain *parent_domain;
	struct device_node *parent_node;
	struct lpc18xx_gpio_pin_ic *ic;
	struct resource res;
	int ret, index;

	parent_node = FUNC9(dev->of_node);
	if (!parent_node)
		return -ENXIO;

	parent_domain = FUNC7(parent_node);
	FUNC10(parent_node);
	if (!parent_domain)
		return -ENXIO;

	ic = FUNC5(dev, sizeof(*ic), GFP_KERNEL);
	if (!ic)
		return -ENOMEM;

	index = FUNC11(dev->of_node, "reg-names",
					 "gpio-pin-ic");
	if (index < 0) {
		ret = -ENODEV;
		goto free_ic;
	}

	ret = FUNC8(dev->of_node, index, &res);
	if (ret < 0)
		goto free_ic;

	ic->base = FUNC2(dev, &res);
	if (FUNC0(ic->base)) {
		ret = FUNC1(ic->base);
		goto free_ic;
	}

	FUNC13(&ic->lock);

	ic->domain = FUNC6(parent_domain, 0,
					      NR_LPC18XX_GPIO_PIN_IC_IRQS,
					      dev->of_node,
					      &lpc18xx_gpio_pin_ic_domain_ops,
					      ic);
	if (!ic->domain) {
		FUNC12("unable to add irq domain\n");
		ret = -ENODEV;
		goto free_iomap;
	}

	gc->pin_ic = ic;

	return 0;

free_iomap:
	FUNC3(dev, ic->base);
free_ic:
	FUNC4(dev, ic);

	return ret;
}