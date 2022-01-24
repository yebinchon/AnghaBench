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
struct wm831x_gpio {struct wm831x* wm831x; } ;
struct wm831x {int /*<<< orphan*/  irq_domain; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int WM831X_IRQ_GPIO_1 ; 
 struct wm831x_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct wm831x_gpio *wm831x_gpio = FUNC0(chip);
	struct wm831x *wm831x = wm831x_gpio->wm831x;

	return FUNC1(wm831x->irq_domain,
				  WM831X_IRQ_GPIO_1 + offset);
}