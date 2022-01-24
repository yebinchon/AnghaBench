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
struct gpio_desc {int /*<<< orphan*/  flags; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLAG_IRQ_IS_ENABLED ; 
 int /*<<< orphan*/  FLAG_USED_AS_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct gpio_desc* FUNC3 (struct gpio_chip*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct gpio_chip *chip, unsigned int offset)
{
	struct gpio_desc *desc = FUNC3(chip, offset);

	if (!FUNC0(desc) &&
	    !FUNC1(!FUNC4(FLAG_USED_AS_IRQ, &desc->flags)))
		FUNC2(FLAG_IRQ_IS_ENABLED, &desc->flags);
}