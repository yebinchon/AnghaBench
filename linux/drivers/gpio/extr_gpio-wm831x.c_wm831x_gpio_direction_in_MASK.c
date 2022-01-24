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
struct wm831x {scalar_t__ has_gpio_ena; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 unsigned int WM831X_GPIO1_CONTROL ; 
 int WM831X_GPN_DIR ; 
 int WM831X_GPN_FN_MASK ; 
 int WM831X_GPN_TRI ; 
 struct wm831x_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (struct wm831x*,unsigned int,int,int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct wm831x_gpio *wm831x_gpio = FUNC0(chip);
	struct wm831x *wm831x = wm831x_gpio->wm831x;
	int val = WM831X_GPN_DIR;

	if (wm831x->has_gpio_ena)
		val |= WM831X_GPN_TRI;

	return FUNC1(wm831x, WM831X_GPIO1_CONTROL + offset,
			       WM831X_GPN_DIR | WM831X_GPN_TRI |
			       WM831X_GPN_FN_MASK, val);
}