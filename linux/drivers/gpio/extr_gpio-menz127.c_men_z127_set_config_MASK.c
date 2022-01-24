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
struct gpio_chip {int dummy; } ;
typedef  enum pin_config_param { ____Placeholder_pin_config_param } pin_config_param ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_DRIVE_OPEN_DRAIN 130 
#define  PIN_CONFIG_DRIVE_PUSH_PULL 129 
#define  PIN_CONFIG_INPUT_DEBOUNCE 128 
 int FUNC0 (struct gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(struct gpio_chip *gc, unsigned offset,
			       unsigned long config)
{
	enum pin_config_param param = FUNC3(config);

	switch (param) {
	case PIN_CONFIG_DRIVE_OPEN_DRAIN:
	case PIN_CONFIG_DRIVE_PUSH_PULL:
		return FUNC1(gc, offset, param);

	case PIN_CONFIG_INPUT_DEBOUNCE:
		return FUNC0(gc, offset,
			FUNC2(config));

	default:
		break;
	}

	return -ENOTSUPP;
}