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
struct cs5535_gpio_chip {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_INPUT_ENABLE ; 
 int /*<<< orphan*/  GPIO_OUTPUT_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct cs5535_gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cs5535_gpio_chip*,unsigned int,int /*<<< orphan*/ ) ; 
 struct cs5535_gpio_chip* FUNC2 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct gpio_chip *c, unsigned offset)
{
	struct cs5535_gpio_chip *chip = FUNC2(c);
	unsigned long flags;

	FUNC3(&chip->lock, flags);
	FUNC1(chip, offset, GPIO_INPUT_ENABLE);
	FUNC0(chip, offset, GPIO_OUTPUT_ENABLE);
	FUNC4(&chip->lock, flags);

	return 0;
}