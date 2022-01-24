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
struct stx104_gpio {int /*<<< orphan*/  base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct stx104_gpio* FUNC0 (struct gpio_chip*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned long *mask,
	unsigned long *bits)
{
	struct stx104_gpio *const stx104gpio = FUNC0(chip);

	*bits = FUNC1(stx104gpio->base);

	return 0;
}