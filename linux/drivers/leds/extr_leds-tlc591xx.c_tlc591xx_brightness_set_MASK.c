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
struct tlc591xx_priv {int dummy; } ;
struct tlc591xx_led {struct tlc591xx_priv* priv; } ;
struct led_classdev {int dummy; } ;
typedef  enum led_brightness { ____Placeholder_led_brightness } led_brightness ;

/* Variables and functions */
 int /*<<< orphan*/  LEDOUT_DIM ; 
 int /*<<< orphan*/  LEDOUT_OFF ; 
 int /*<<< orphan*/  LEDOUT_ON ; 
#define  LED_FULL 128 
 struct tlc591xx_led* FUNC0 (struct led_classdev*) ; 
 int FUNC1 (struct tlc591xx_priv*,struct tlc591xx_led*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct tlc591xx_priv*,struct tlc591xx_led*,int) ; 

__attribute__((used)) static int
FUNC3(struct led_classdev *led_cdev,
			enum led_brightness brightness)
{
	struct tlc591xx_led *led = FUNC0(led_cdev);
	struct tlc591xx_priv *priv = led->priv;
	int err;

	switch (brightness) {
	case 0:
		err = FUNC1(priv, led, LEDOUT_OFF);
		break;
	case LED_FULL:
		err = FUNC1(priv, led, LEDOUT_ON);
		break;
	default:
		err = FUNC1(priv, led, LEDOUT_DIM);
		if (!err)
			err = FUNC2(priv, led, brightness);
	}

	return err;
}