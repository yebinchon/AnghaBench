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
struct gpio_mockup_chip {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_mockup_chip*,unsigned int,int) ; 
 struct gpio_mockup_chip* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *gc,
			   unsigned int offset, int value)
{
	struct gpio_mockup_chip *chip = FUNC1(gc);

	FUNC2(&chip->lock);
	FUNC0(chip, offset, value);
	FUNC3(&chip->lock);
}