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
struct it87_gpio {int simple_size; int /*<<< orphan*/  lock; scalar_t__ output_base; scalar_t__ simple_base; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 struct it87_gpio* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct gpio_chip *chip, unsigned gpio_num)
{
	u8 mask, group;
	int rc = 0;
	struct it87_gpio *it87_gpio = FUNC0(chip);

	mask = 1 << (gpio_num % 8);
	group = (gpio_num / 8);

	FUNC1(&it87_gpio->lock);

	rc = FUNC4();
	if (rc)
		goto exit;

	/* not all the IT87xx chips support Simple I/O and not all of
	 * them allow all the lines to be set/unset to Simple I/O.
	 */
	if (group < it87_gpio->simple_size)
		FUNC6(mask, group + it87_gpio->simple_base);

	/* clear output enable, setting the pin to input, as all the
	 * newly-exported GPIO interfaces are set to input.
	 */
	FUNC3(mask, group + it87_gpio->output_base);

	FUNC5();

exit:
	FUNC2(&it87_gpio->lock);
	return rc;
}