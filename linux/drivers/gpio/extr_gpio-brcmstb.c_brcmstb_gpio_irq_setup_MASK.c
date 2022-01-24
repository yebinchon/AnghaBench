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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq_set_wake; int /*<<< orphan*/  irq_set_type; int /*<<< orphan*/  irq_ack; int /*<<< orphan*/  irq_unmask; void* irq_mask; void* irq_disable; int /*<<< orphan*/  name; } ;
struct brcmstb_gpio_priv {scalar_t__ parent_wake_irq; int /*<<< orphan*/  irq_domain; int /*<<< orphan*/  parent_irq; TYPE_1__ irq_chip; int /*<<< orphan*/  num_gpios; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_DISABLE_UNLAZY ; 
 int /*<<< orphan*/  brcmstb_gpio_irq_ack ; 
 int /*<<< orphan*/  brcmstb_gpio_irq_domain_ops ; 
 int /*<<< orphan*/  brcmstb_gpio_irq_handler ; 
 void* brcmstb_gpio_irq_mask ; 
 int /*<<< orphan*/  brcmstb_gpio_irq_set_type ; 
 int /*<<< orphan*/  brcmstb_gpio_irq_set_wake ; 
 int /*<<< orphan*/  brcmstb_gpio_irq_unmask ; 
 int /*<<< orphan*/  brcmstb_gpio_wake_irq_handler ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct brcmstb_gpio_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct brcmstb_gpio_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct brcmstb_gpio_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct device_node*,char*) ; 
 scalar_t__ FUNC11 (struct platform_device*,int) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev,
		struct brcmstb_gpio_priv *priv)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	int err;

	priv->irq_domain =
		FUNC6(np, priv->num_gpios,
				      &brcmstb_gpio_irq_domain_ops,
				      priv);
	if (!priv->irq_domain) {
		FUNC0(dev, "Couldn't allocate IRQ domain\n");
		return -ENXIO;
	}

	if (FUNC10(np, "wakeup-source")) {
		priv->parent_wake_irq = FUNC11(pdev, 1);
		if (priv->parent_wake_irq < 0) {
			priv->parent_wake_irq = 0;
			FUNC2(dev,
				"Couldn't get wake IRQ - GPIOs will not be able to wake from sleep");
		} else {
			/*
			 * Set wakeup capability so we can process boot-time
			 * "wakeups" (e.g., from S5 cold boot)
			 */
			FUNC3(dev, true);
			FUNC4(dev);
			err = FUNC5(dev, priv->parent_wake_irq,
					       brcmstb_gpio_wake_irq_handler,
					       IRQF_SHARED,
					       "brcmstb-gpio-wake", priv);

			if (err < 0) {
				FUNC0(dev, "Couldn't request wake IRQ");
				goto out_free_domain;
			}
		}
	}

	priv->irq_chip.name = FUNC1(dev);
	priv->irq_chip.irq_disable = brcmstb_gpio_irq_mask;
	priv->irq_chip.irq_mask = brcmstb_gpio_irq_mask;
	priv->irq_chip.irq_unmask = brcmstb_gpio_irq_unmask;
	priv->irq_chip.irq_ack = brcmstb_gpio_irq_ack;
	priv->irq_chip.irq_set_type = brcmstb_gpio_irq_set_type;

	if (priv->parent_wake_irq)
		priv->irq_chip.irq_set_wake = brcmstb_gpio_irq_set_wake;

	FUNC8(priv->parent_irq,
					 brcmstb_gpio_irq_handler, priv);
	FUNC9(priv->parent_irq, IRQ_DISABLE_UNLAZY);

	return 0;

out_free_domain:
	FUNC7(priv->irq_domain);

	return err;
}