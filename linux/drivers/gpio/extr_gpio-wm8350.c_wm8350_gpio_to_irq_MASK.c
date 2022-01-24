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
struct wm8350 {int irq_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned int) ; 
 struct wm8350_gpio_data* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct wm8350_gpio_data *wm8350_gpio = FUNC1(chip);
	struct wm8350 *wm8350 = wm8350_gpio->wm8350;

	if (!wm8350->irq_base)
		return -EINVAL;

	return wm8350->irq_base + FUNC0(offset);
}