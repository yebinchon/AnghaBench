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
typedef  int /*<<< orphan*/  u32 ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
 scalar_t__ PIN_CONFIG_INPUT_DEBOUNCE ; 
 int FUNC0 (struct gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned gpio,
				    unsigned long config)
{
	u32 debounce;

	if (FUNC2(config) != PIN_CONFIG_INPUT_DEBOUNCE)
		return -ENOTSUPP;

	debounce = FUNC1(config);
	return FUNC0(chip, gpio, debounce);
}