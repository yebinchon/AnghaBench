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
struct gpio_rcar_priv {int /*<<< orphan*/  dev; } ;
struct gpio_chip {unsigned int base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*,unsigned int,int) ; 
 struct gpio_rcar_priv* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned offset)
{
	struct gpio_rcar_priv *p = FUNC1(chip);

	FUNC2(chip->base + offset);

	/*
	 * Set the GPIO as an input to ensure that the next GPIO request won't
	 * drive the GPIO pin as an output.
	 */
	FUNC0(chip, offset, false);

	FUNC3(p->dev);
}