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
struct led_pwm_priv {int dummy; } ;
struct led_pwm_platform_data {int num_leds; int /*<<< orphan*/ * leds; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct led_pwm_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct led_pwm_priv* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,struct led_pwm_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct led_pwm_priv*) ; 
 int /*<<< orphan*/  leds ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct led_pwm_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct led_pwm_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct led_pwm_platform_data *pdata = FUNC0(&pdev->dev);
	struct led_pwm_priv *priv;
	int count, i;
	int ret = 0;

	if (pdata)
		count = pdata->num_leds;
	else
		count = FUNC1(&pdev->dev);

	if (!count)
		return -EINVAL;

	priv = FUNC2(&pdev->dev, FUNC6(priv, leds, count),
			    GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	if (pdata) {
		for (i = 0; i < count; i++) {
			ret = FUNC3(&pdev->dev, priv, &pdata->leds[i],
					  NULL);
			if (ret)
				break;
		}
	} else {
		ret = FUNC4(&pdev->dev, priv);
	}

	if (ret)
		return ret;

	FUNC5(pdev, priv);

	return 0;
}