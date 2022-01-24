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
struct tqmx86_gpio_data {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  TQMX86_GPIOD ; 
 struct tqmx86_gpio_data* FUNC1 (struct gpio_chip*) ; 
 int FUNC2 (struct tqmx86_gpio_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip, unsigned int offset)
{
	struct tqmx86_gpio_data *gpio = FUNC1(chip);

	return !!(FUNC2(gpio, TQMX86_GPIOD) & FUNC0(offset));
}