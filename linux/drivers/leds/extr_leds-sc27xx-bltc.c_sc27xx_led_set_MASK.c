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
struct sc27xx_led {TYPE_1__* priv; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int LED_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sc27xx_led*) ; 
 int FUNC3 (struct sc27xx_led*,int) ; 
 struct sc27xx_led* FUNC4 (struct led_classdev*) ; 

__attribute__((used)) static int FUNC5(struct led_classdev *ldev, enum led_brightness value)
{
	struct sc27xx_led *leds = FUNC4(ldev);
	int err;

	FUNC0(&leds->priv->lock);

	if (value == LED_OFF)
		err = FUNC2(leds);
	else
		err = FUNC3(leds, value);

	FUNC1(&leds->priv->lock);

	return err;
}