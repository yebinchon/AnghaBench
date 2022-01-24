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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gpio_leds_priv {int num_leds; struct gpio_led_data* leds; } ;
struct gpio_led_platform_data {int num_leds; int /*<<< orphan*/  gpio_blink_set; struct gpio_led* leds; } ;
struct gpio_led_data {struct gpio_leds_priv* gpiod; } ;
struct gpio_led {int /*<<< orphan*/  name; int /*<<< orphan*/  gpio; struct gpio_leds_priv* gpiod; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct gpio_leds_priv*) ; 
 int FUNC1 (struct gpio_leds_priv*) ; 
 int FUNC2 (struct gpio_led const*,struct gpio_led_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gpio_led_platform_data* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gpio_leds_priv* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct gpio_leds_priv* FUNC6 (int /*<<< orphan*/ *,int,struct gpio_led const*) ; 
 struct gpio_leds_priv* FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct gpio_leds_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct gpio_led_platform_data *pdata = FUNC3(&pdev->dev);
	struct gpio_leds_priv *priv;
	int i, ret = 0;

	if (pdata && pdata->num_leds) {
		priv = FUNC5(&pdev->dev,
				FUNC9(pdata->num_leds),
					GFP_KERNEL);
		if (!priv)
			return -ENOMEM;

		priv->num_leds = pdata->num_leds;
		for (i = 0; i < priv->num_leds; i++) {
			const struct gpio_led *template = &pdata->leds[i];
			struct gpio_led_data *led_dat = &priv->leds[i];

			if (template->gpiod)
				led_dat->gpiod = template->gpiod;
			else
				led_dat->gpiod =
					FUNC6(&pdev->dev,
							   i, template);
			if (FUNC0(led_dat->gpiod)) {
				FUNC4(&pdev->dev, "Skipping unavailable LED gpio %d (%s)\n",
					 template->gpio, template->name);
				continue;
			}

			ret = FUNC2(template, led_dat,
					      &pdev->dev, NULL,
					      pdata->gpio_blink_set);
			if (ret < 0)
				return ret;
		}
	} else {
		priv = FUNC7(pdev);
		if (FUNC0(priv))
			return FUNC1(priv);
	}

	FUNC8(pdev, priv);

	return 0;
}