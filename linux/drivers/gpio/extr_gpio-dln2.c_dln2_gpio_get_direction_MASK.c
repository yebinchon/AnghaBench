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
struct dln2_gpio {int /*<<< orphan*/  output_enabled; } ;

/* Variables and functions */
 struct dln2_gpio* FUNC0 (struct gpio_chip*) ; 
 scalar_t__ FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *chip, unsigned offset)
{
	struct dln2_gpio *dln2 = FUNC0(chip);

	if (FUNC1(offset, dln2->output_enabled))
		return 0;

	return 1;
}