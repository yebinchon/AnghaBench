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
struct wm8350_gpio_data {struct wm8350* wm8350; } ;
struct wm8350 {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WM8350_GPIO_CONFIGURATION_I_O ; 
 struct wm8350_gpio_data* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (struct wm8350*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_chip*,unsigned int,int) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip,
				     unsigned offset, int value)
{
	struct wm8350_gpio_data *wm8350_gpio = FUNC0(chip);
	struct wm8350 *wm8350 = wm8350_gpio->wm8350;
	int ret;

	ret = FUNC1(wm8350, WM8350_GPIO_CONFIGURATION_I_O,
				1 << offset);
	if (ret < 0)
		return ret;

	/* Don't have an atomic direction/value setup */
	FUNC2(chip, offset, value);

	return 0;
}