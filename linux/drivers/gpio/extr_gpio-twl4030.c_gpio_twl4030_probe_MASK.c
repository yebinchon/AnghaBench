#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct twl4030_gpio_platform_data {int (* setup ) (TYPE_1__*,int,scalar_t__) ;scalar_t__ use_leds; int /*<<< orphan*/  mmc_cd; int /*<<< orphan*/  debounce; int /*<<< orphan*/  pulldowns; int /*<<< orphan*/  pullups; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_12__ {int base; scalar_t__ ngpio; TYPE_1__* parent; } ;
struct gpio_twl4030_priv {int irq_base; TYPE_2__ gpio_chip; int /*<<< orphan*/  mutex; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ TWL4030_GPIO_MAX ; 
 int /*<<< orphan*/  TWL4030_MODULE_GPIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 struct twl4030_gpio_platform_data* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct gpio_twl4030_priv* FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int FUNC8 (TYPE_2__*,struct gpio_twl4030_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct device_node*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irq_domain_simple_ops ; 
 scalar_t__ FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct twl4030_gpio_platform_data* FUNC12 (TYPE_1__*,struct twl4030_gpio_platform_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct gpio_twl4030_priv*) ; 
 int FUNC14 (TYPE_1__*,int,scalar_t__) ; 
 TYPE_2__ template_chip ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct twl4030_gpio_platform_data *pdata = FUNC2(&pdev->dev);
	struct device_node *node = pdev->dev.of_node;
	struct gpio_twl4030_priv *priv;
	int ret, irq_base;

	priv = FUNC4(&pdev->dev, sizeof(struct gpio_twl4030_priv),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	/* maybe setup IRQs */
	if (FUNC10()) {
		FUNC1(&pdev->dev, "can't dispatch IRQs from modules\n");
		goto no_irqs;
	}

	irq_base = FUNC3(&pdev->dev, -1,
					0, TWL4030_GPIO_MAX, 0);
	if (irq_base < 0) {
		FUNC1(&pdev->dev, "Failed to alloc irq_descs\n");
		return irq_base;
	}

	FUNC9(node, TWL4030_GPIO_MAX, irq_base, 0,
			      &irq_domain_simple_ops, NULL);

	ret = FUNC15(&pdev->dev, TWL4030_MODULE_GPIO, irq_base);
	if (ret < 0)
		return ret;

	priv->irq_base = irq_base;

no_irqs:
	priv->gpio_chip = template_chip;
	priv->gpio_chip.base = -1;
	priv->gpio_chip.ngpio = TWL4030_GPIO_MAX;
	priv->gpio_chip.parent = &pdev->dev;

	FUNC11(&priv->mutex);

	if (node)
		pdata = FUNC12(&pdev->dev, pdata);

	if (pdata == NULL) {
		FUNC1(&pdev->dev, "Platform data is missing\n");
		return -ENXIO;
	}

	/*
	 * NOTE:  boards may waste power if they don't set pullups
	 * and pulldowns correctly ... default for non-ULPI pins is
	 * pulldown, and some other pins may have external pullups
	 * or pulldowns.  Careful!
	 */
	ret = FUNC6(pdata->pullups, pdata->pulldowns);
	if (ret)
		FUNC0(&pdev->dev, "pullups %.05x %.05x --> %d\n",
			pdata->pullups, pdata->pulldowns, ret);

	ret = FUNC5(pdata->debounce, pdata->mmc_cd);
	if (ret)
		FUNC0(&pdev->dev, "debounce %.03x %.01x --> %d\n",
			pdata->debounce, pdata->mmc_cd, ret);

	/*
	 * NOTE: we assume VIBRA_CTL.VIBRA_EN, in MODULE_AUDIO_VOICE,
	 * is (still) clear if use_leds is set.
	 */
	if (pdata->use_leds)
		priv->gpio_chip.ngpio += 2;

	ret = FUNC8(&priv->gpio_chip, priv);
	if (ret < 0) {
		FUNC1(&pdev->dev, "could not register gpiochip, %d\n", ret);
		priv->gpio_chip.ngpio = 0;
		FUNC7(pdev);
		goto out;
	}

	FUNC13(pdev, priv);

	if (pdata->setup) {
		int status;

		status = pdata->setup(&pdev->dev, priv->gpio_chip.base,
				      TWL4030_GPIO_MAX);
		if (status)
			FUNC0(&pdev->dev, "setup --> %d\n", status);
	}

out:
	return ret;
}