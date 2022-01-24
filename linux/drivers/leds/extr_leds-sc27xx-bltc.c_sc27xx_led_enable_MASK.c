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
typedef  int u8 ;
typedef  scalar_t__ u32 ;
struct sc27xx_led {int line; TYPE_1__* priv; } ;
struct regmap {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {struct regmap* regmap; scalar_t__ base; } ;

/* Variables and functions */
 int SC27XX_CTRL_SHIFT ; 
 int SC27XX_DUTY_MASK ; 
 int SC27XX_DUTY_SHIFT ; 
 scalar_t__ SC27XX_LEDS_CTRL ; 
 scalar_t__ SC27XX_LEDS_DUTY ; 
 int SC27XX_LED_RUN ; 
 int SC27XX_LED_TYPE ; 
 int SC27XX_MOD_MASK ; 
 int FUNC0 (struct regmap*,scalar_t__,int,int) ; 
 scalar_t__ FUNC1 (struct sc27xx_led*) ; 

__attribute__((used)) static int FUNC2(struct sc27xx_led *leds, enum led_brightness value)
{
	u32 base = FUNC1(leds);
	u32 ctrl_base = leds->priv->base + SC27XX_LEDS_CTRL;
	u8 ctrl_shift = SC27XX_CTRL_SHIFT * leds->line;
	struct regmap *regmap = leds->priv->regmap;
	int err;

	err = FUNC0(regmap, base + SC27XX_LEDS_DUTY,
				 SC27XX_DUTY_MASK,
				 (value << SC27XX_DUTY_SHIFT) |
				 SC27XX_MOD_MASK);
	if (err)
		return err;

	return FUNC0(regmap, ctrl_base,
			(SC27XX_LED_RUN | SC27XX_LED_TYPE) << ctrl_shift,
			(SC27XX_LED_RUN | SC27XX_LED_TYPE) << ctrl_shift);
}