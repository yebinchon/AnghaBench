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
typedef  int u8 ;
struct it87_gpio {int /*<<< orphan*/  lock; scalar_t__ output_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct it87_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_chip*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip,
				   unsigned gpio_num, int val)
{
	u8 mask, group;
	int rc = 0;
	struct it87_gpio *it87_gpio = FUNC0(chip);

	mask = 1 << (gpio_num % 8);
	group = (gpio_num / 8);

	FUNC2(&it87_gpio->lock);

	rc = FUNC4();
	if (rc)
		goto exit;

	/* set the output enable bit */
	FUNC6(mask, group + it87_gpio->output_base);

	FUNC1(chip, gpio_num, val);

	FUNC5();

exit:
	FUNC3(&it87_gpio->lock);
	return rc;
}