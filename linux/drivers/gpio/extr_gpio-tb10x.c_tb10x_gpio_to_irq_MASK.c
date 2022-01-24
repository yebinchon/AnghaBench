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
struct tb10x_gpio {int /*<<< orphan*/  domain; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct tb10x_gpio* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct tb10x_gpio *tb10x_gpio = FUNC0(chip);

	return FUNC1(tb10x_gpio->domain, offset);
}