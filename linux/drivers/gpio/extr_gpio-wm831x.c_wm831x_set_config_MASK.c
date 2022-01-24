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
struct wm831x {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 130 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 129 
#define  PIN_CONFIG_INPUT_DEBOUNCE 128 
 unsigned int WM831X_GPIO1_CONTROL ; 
 int /*<<< orphan*/  WM831X_GPN_OD ; 
 int /*<<< orphan*/  WM831X_GPN_OD_MASK ; 
 struct wm831x_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int FUNC3 (struct wm831x*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct wm831x*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *chip, unsigned int offset,
			     unsigned long config)
{
	struct wm831x_gpio *wm831x_gpio = FUNC0(chip);
	struct wm831x *wm831x = wm831x_gpio->wm831x;
	int reg = WM831X_GPIO1_CONTROL + offset;

	switch (FUNC2(config)) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		return FUNC4(wm831x, reg,
				       WM831X_GPN_OD_MASK, WM831X_GPN_OD);
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		return FUNC4(wm831x, reg,
				       WM831X_GPN_OD_MASK, 0);
	case PIN_CONFIG_INPUT_DEBOUNCE:
		return FUNC3(wm831x, offset,
			FUNC1(config));
	default:
		break;
	}

	return -ENOTSUPP;
}