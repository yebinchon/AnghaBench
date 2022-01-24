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
struct gpio_trig_data {int /*<<< orphan*/  gpio; struct led_classdev* led; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct gpio_trig_data* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct led_classdev*,struct gpio_trig_data*) ; 

__attribute__((used)) static int FUNC2(struct led_classdev *led)
{
	struct gpio_trig_data *gpio_data;

	gpio_data = FUNC0(sizeof(*gpio_data), GFP_KERNEL);
	if (!gpio_data)
		return -ENOMEM;

	gpio_data->led = led;
	gpio_data->gpio = -ENOENT;

	FUNC1(led, gpio_data);

	return 0;
}