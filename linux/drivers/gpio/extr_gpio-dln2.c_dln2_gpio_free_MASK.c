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
struct dln2_gpio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLN2_GPIO_PIN_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (struct dln2_gpio*,int /*<<< orphan*/ ,unsigned int) ; 
 struct dln2_gpio* FUNC1 (struct gpio_chip*) ; 

__attribute__((used)) static void FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct dln2_gpio *dln2 = FUNC1(chip);

	FUNC0(dln2, DLN2_GPIO_PIN_DISABLE, offset);
}