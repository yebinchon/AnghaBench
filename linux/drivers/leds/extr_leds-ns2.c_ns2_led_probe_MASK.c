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
struct ns2_led_priv {int num_leds; int /*<<< orphan*/ * leds_data; } ;
struct ns2_led_platform_data {int num_leds; int /*<<< orphan*/ * leds; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct platform_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ns2_led_platform_data* FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct ns2_led_platform_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct ns2_led_priv*) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct ns2_led_platform_data *pdata = FUNC2(&pdev->dev);
	struct ns2_led_priv *priv;
	int i;
	int ret;

#ifdef CONFIG_OF_GPIO
	if (!pdata) {
		pdata = devm_kzalloc(&pdev->dev,
				     sizeof(struct ns2_led_platform_data),
				     GFP_KERNEL);
		if (!pdata)
			return -ENOMEM;

		ret = ns2_leds_get_of_pdata(&pdev->dev, pdata);
		if (ret)
			return ret;
	}
#else
	if (!pdata)
		return -EINVAL;
#endif /* CONFIG_OF_GPIO */

	priv = FUNC3(&pdev->dev,
			    FUNC6(pdata->num_leds), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;
	priv->num_leds = pdata->num_leds;

	for (i = 0; i < priv->num_leds; i++) {
		ret = FUNC0(pdev, &priv->leds_data[i],
				     &pdata->leds[i]);
		if (ret < 0) {
			for (i = i - 1; i >= 0; i--)
				FUNC1(&priv->leds_data[i]);
			return ret;
		}
	}

	FUNC5(pdev, priv);

	return 0;
}