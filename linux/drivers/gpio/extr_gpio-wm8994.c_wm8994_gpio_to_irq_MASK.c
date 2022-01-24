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
struct wm8994_gpio {struct wm8994* wm8994; } ;
struct wm8994 {int /*<<< orphan*/  irq_data; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct wm8994_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct wm8994_gpio *wm8994_gpio = FUNC0(chip);
	struct wm8994 *wm8994 = wm8994_gpio->wm8994;

	return FUNC1(wm8994->irq_data, offset);
}