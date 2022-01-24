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
struct lm3697_led {int /*<<< orphan*/  lmu_data; } ;
struct lm3697 {int bank_cfg; TYPE_1__* client; struct lm3697_led* leds; int /*<<< orphan*/  regmap; scalar_t__ enable_gpio; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LM3697_CTRL_ENABLE ; 
 int LM3697_MAX_CONTROL_BANKS ; 
 int /*<<< orphan*/  LM3697_OUTPUT_CONFIG ; 
 int /*<<< orphan*/  LM3697_RESET ; 
 int LM3697_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct lm3697 *priv)
{
	struct lm3697_led *led;
	int i, ret;

	if (priv->enable_gpio) {
		FUNC1(priv->enable_gpio, 1);
	} else {
		ret = FUNC2(priv->regmap, LM3697_RESET, LM3697_SW_RESET);
		if (ret) {
			FUNC0(&priv->client->dev, "Cannot reset the device\n");
			goto out;
		}
	}

	ret = FUNC2(priv->regmap, LM3697_CTRL_ENABLE, 0x0);
	if (ret) {
		FUNC0(&priv->client->dev, "Cannot write ctrl enable\n");
		goto out;
	}

	ret = FUNC2(priv->regmap, LM3697_OUTPUT_CONFIG, priv->bank_cfg);
	if (ret)
		FUNC0(&priv->client->dev, "Cannot write OUTPUT config\n");

	for (i = 0; i < LM3697_MAX_CONTROL_BANKS; i++) {
		led = &priv->leds[i];
		ret = FUNC3(&led->lmu_data);
		if (ret)
			FUNC0(&priv->client->dev, "Setting the ramp rate failed\n");
	}
out:
	return ret;
}