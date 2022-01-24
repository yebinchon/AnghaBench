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
struct resource {int /*<<< orphan*/  start; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct irq_chip {char const* name; int flags; int /*<<< orphan*/  irq_set_wake; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_unmask; int /*<<< orphan*/  irq_mask; struct device* parent_device; } ;
struct gpio_chip {char const* label; int base; unsigned int ngpio; int /*<<< orphan*/  owner; struct device* parent; int /*<<< orphan*/  set_multiple; int /*<<< orphan*/  set; int /*<<< orphan*/  direction_output; int /*<<< orphan*/  get; int /*<<< orphan*/  direction_input; int /*<<< orphan*/  get_direction; int /*<<< orphan*/  free; int /*<<< orphan*/  request; } ;
struct gpio_rcar_priv {int /*<<< orphan*/  irq_parent; struct irq_chip irq_chip; struct gpio_chip gpio_chip; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; struct device* dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int IRQCHIP_MASK_ON_SUSPEND ; 
 int IRQCHIP_SET_TYPE_MASKED ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_TYPE_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,unsigned int) ; 
 char* FUNC4 (struct device*) ; 
 struct gpio_rcar_priv* FUNC5 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,struct gpio_rcar_priv*) ; 
 int /*<<< orphan*/  gpio_rcar_direction_input ; 
 int /*<<< orphan*/  gpio_rcar_direction_output ; 
 int /*<<< orphan*/  gpio_rcar_free ; 
 int /*<<< orphan*/  gpio_rcar_get ; 
 int /*<<< orphan*/  gpio_rcar_get_direction ; 
 int /*<<< orphan*/  gpio_rcar_irq_disable ; 
 int /*<<< orphan*/  gpio_rcar_irq_enable ; 
 int /*<<< orphan*/  gpio_rcar_irq_handler ; 
 int /*<<< orphan*/  gpio_rcar_irq_set_type ; 
 int /*<<< orphan*/  gpio_rcar_irq_set_wake ; 
 int FUNC8 (struct gpio_rcar_priv*,unsigned int*) ; 
 int /*<<< orphan*/  gpio_rcar_request ; 
 int /*<<< orphan*/  gpio_rcar_set ; 
 int /*<<< orphan*/  gpio_rcar_set_multiple ; 
 int FUNC9 (struct gpio_chip*,struct gpio_rcar_priv*) ; 
 int FUNC10 (struct gpio_chip*,struct irq_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gpio_chip*) ; 
 int /*<<< orphan*/  handle_level_irq ; 
 struct resource* FUNC12 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct gpio_rcar_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 
 int /*<<< orphan*/  FUNC15 (struct device*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct platform_device *pdev)
{
	struct gpio_rcar_priv *p;
	struct resource *irq;
	struct gpio_chip *gpio_chip;
	struct irq_chip *irq_chip;
	struct device *dev = &pdev->dev;
	const char *name = FUNC4(dev);
	unsigned int npins;
	int ret;

	p = FUNC5(dev, sizeof(*p), GFP_KERNEL);
	if (!p)
		return -ENOMEM;

	p->dev = dev;
	FUNC16(&p->lock);

	/* Get device configuration from DT node */
	ret = FUNC8(p, &npins);
	if (ret < 0)
		return ret;

	FUNC13(pdev, p);

	FUNC15(dev);

	irq = FUNC12(pdev, IORESOURCE_IRQ, 0);
	if (!irq) {
		FUNC2(dev, "missing IRQ\n");
		ret = -EINVAL;
		goto err0;
	}

	p->base = FUNC6(pdev, 0);
	if (FUNC0(p->base)) {
		ret = FUNC1(p->base);
		goto err0;
	}

	gpio_chip = &p->gpio_chip;
	gpio_chip->request = gpio_rcar_request;
	gpio_chip->free = gpio_rcar_free;
	gpio_chip->get_direction = gpio_rcar_get_direction;
	gpio_chip->direction_input = gpio_rcar_direction_input;
	gpio_chip->get = gpio_rcar_get;
	gpio_chip->direction_output = gpio_rcar_direction_output;
	gpio_chip->set = gpio_rcar_set;
	gpio_chip->set_multiple = gpio_rcar_set_multiple;
	gpio_chip->label = name;
	gpio_chip->parent = dev;
	gpio_chip->owner = THIS_MODULE;
	gpio_chip->base = -1;
	gpio_chip->ngpio = npins;

	irq_chip = &p->irq_chip;
	irq_chip->name = name;
	irq_chip->parent_device = dev;
	irq_chip->irq_mask = gpio_rcar_irq_disable;
	irq_chip->irq_unmask = gpio_rcar_irq_enable;
	irq_chip->irq_set_type = gpio_rcar_irq_set_type;
	irq_chip->irq_set_wake = gpio_rcar_irq_set_wake;
	irq_chip->flags = IRQCHIP_SET_TYPE_MASKED | IRQCHIP_MASK_ON_SUSPEND;

	ret = FUNC9(gpio_chip, p);
	if (ret) {
		FUNC2(dev, "failed to add GPIO controller\n");
		goto err0;
	}

	ret = FUNC10(gpio_chip, irq_chip, 0, handle_level_irq,
				   IRQ_TYPE_NONE);
	if (ret) {
		FUNC2(dev, "cannot add irqchip\n");
		goto err1;
	}

	p->irq_parent = irq->start;
	if (FUNC7(dev, irq->start, gpio_rcar_irq_handler,
			     IRQF_SHARED, name, p)) {
		FUNC2(dev, "failed to request IRQ\n");
		ret = -ENOENT;
		goto err1;
	}

	FUNC3(dev, "driving %d GPIOs\n", npins);

	return 0;

err1:
	FUNC11(gpio_chip);
err0:
	FUNC14(dev);
	return ret;
}