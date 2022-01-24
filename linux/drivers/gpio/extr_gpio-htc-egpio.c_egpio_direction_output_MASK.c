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
struct egpio_chip {int /*<<< orphan*/  is_out; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct gpio_chip*,unsigned int,int) ; 
 struct egpio_chip* FUNC1 (struct gpio_chip*) ; 
 scalar_t__ FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *chip,
					unsigned offset, int value)
{
	struct egpio_chip *egpio;

	egpio = FUNC1(chip);
	if (FUNC2(offset, &egpio->is_out)) {
		FUNC0(chip, offset, value);
		return 0;
	} else {
		return -EINVAL;
	}
}