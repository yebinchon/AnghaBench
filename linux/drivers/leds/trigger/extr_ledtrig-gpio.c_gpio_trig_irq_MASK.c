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
struct led_classdev {int dummy; } ;
struct gpio_trig_data {int /*<<< orphan*/  led; scalar_t__ desired_brightness; scalar_t__ inverted; int /*<<< orphan*/  gpio; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ LED_FULL ; 
 scalar_t__ LED_OFF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct gpio_trig_data* FUNC1 (struct led_classdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *_led)
{
	struct led_classdev *led = _led;
	struct gpio_trig_data *gpio_data = FUNC1(led);
	int tmp;

	tmp = FUNC0(gpio_data->gpio);
	if (gpio_data->inverted)
		tmp = !tmp;

	if (tmp) {
		if (gpio_data->desired_brightness)
			FUNC2(gpio_data->led,
					   gpio_data->desired_brightness);
		else
			FUNC2(gpio_data->led, LED_FULL);
	} else {
		FUNC2(gpio_data->led, LED_OFF);
	}

	return IRQ_HANDLED;
}