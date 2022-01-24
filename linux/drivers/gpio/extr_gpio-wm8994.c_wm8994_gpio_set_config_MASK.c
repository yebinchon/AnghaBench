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
struct wm8994 {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 129 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 128 
 int /*<<< orphan*/  WM8994_GPIO_1 ; 
 int /*<<< orphan*/  WM8994_GPN_OP_CFG ; 
 int /*<<< orphan*/  WM8994_GPN_OP_CFG_MASK ; 
 struct wm8994_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (unsigned long) ; 
 int FUNC2 (struct wm8994*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset,
				  unsigned long config)
{
	struct wm8994_gpio *wm8994_gpio = FUNC0(chip);
	struct wm8994 *wm8994 = wm8994_gpio->wm8994;

	switch (FUNC1(config)) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
		return FUNC2(wm8994, WM8994_GPIO_1 + offset,
				       WM8994_GPN_OP_CFG_MASK,
				       WM8994_GPN_OP_CFG);
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		return FUNC2(wm8994, WM8994_GPIO_1 + offset,
				       WM8994_GPN_OP_CFG_MASK, 0);
	default:
		break;
	}

	return -ENOTSUPP;
}