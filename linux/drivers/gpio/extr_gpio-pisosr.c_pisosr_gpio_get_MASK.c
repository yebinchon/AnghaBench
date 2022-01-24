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
struct pisosr_gpio {unsigned int* buffer; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct pisosr_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct pisosr_gpio*) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct pisosr_gpio *gpio = FUNC0(chip);

	/* Refresh may not always be needed */
	FUNC1(gpio);

	return (gpio->buffer[offset / 8] >> (offset % 8)) & 0x1;
}