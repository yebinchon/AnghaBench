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
struct sc27xx_led_priv {struct sc27xx_led* leds; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {char* default_trigger; int /*<<< orphan*/  pattern_clear; int /*<<< orphan*/  pattern_set; int /*<<< orphan*/  brightness_set_blocking; } ;
struct sc27xx_led {int line; TYPE_1__ ldev; int /*<<< orphan*/  fwnode; struct sc27xx_led_priv* priv; int /*<<< orphan*/  active; } ;
struct led_init_data {char* devicename; char* default_label; int /*<<< orphan*/  fwnode; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int SC27XX_LEDS_MAX ; 
 int FUNC0 (struct device*,TYPE_1__*,struct led_init_data*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc27xx_led_pattern_clear ; 
 int /*<<< orphan*/  sc27xx_led_pattern_set ; 
 int /*<<< orphan*/  sc27xx_led_set ; 

__attribute__((used)) static int FUNC2(struct device *dev, struct sc27xx_led_priv *priv)
{
	int i, err;

	err = FUNC1(priv->regmap);
	if (err)
		return err;

	for (i = 0; i < SC27XX_LEDS_MAX; i++) {
		struct sc27xx_led *led = &priv->leds[i];
		struct led_init_data init_data = {};

		if (!led->active)
			continue;

		led->line = i;
		led->priv = priv;
		led->ldev.brightness_set_blocking = sc27xx_led_set;
		led->ldev.pattern_set = sc27xx_led_pattern_set;
		led->ldev.pattern_clear = sc27xx_led_pattern_clear;
		led->ldev.default_trigger = "pattern";

		init_data.fwnode = led->fwnode;
		init_data.devicename = "sc27xx";
		init_data.default_label = ":";

		err = FUNC0(dev, &led->ldev,
						     &init_data);
		if (err)
			return err;
	}

	return 0;
}