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
struct zx_gpio {scalar_t__ base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ ZX_GPIO_DO0 ; 
 scalar_t__ ZX_GPIO_DO1 ; 
 struct zx_gpio* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct gpio_chip *gc, unsigned offset, int value)
{
	struct zx_gpio *chip = FUNC1(gc);

	if (value)
		FUNC2(FUNC0(offset), chip->base + ZX_GPIO_DO1);
	else
		FUNC2(FUNC0(offset), chip->base + ZX_GPIO_DO0);
}