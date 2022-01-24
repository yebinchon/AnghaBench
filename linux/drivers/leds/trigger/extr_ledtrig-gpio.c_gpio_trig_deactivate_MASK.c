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
struct gpio_trig_data {int /*<<< orphan*/  gpio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct led_classdev*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_trig_data*) ; 
 struct gpio_trig_data* FUNC4 (struct led_classdev*) ; 

__attribute__((used)) static void FUNC5(struct led_classdev *led)
{
	struct gpio_trig_data *gpio_data = FUNC4(led);

	if (FUNC1(gpio_data->gpio))
		FUNC0(FUNC2(gpio_data->gpio), led);
	FUNC3(gpio_data);
}