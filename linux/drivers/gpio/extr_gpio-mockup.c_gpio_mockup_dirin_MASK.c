#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gpio_mockup_chip {int /*<<< orphan*/  lock; TYPE_1__* lines; } ;
struct gpio_chip {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MOCKUP_DIR_IN ; 
 struct gpio_mockup_chip* FUNC0 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct gpio_chip *gc, unsigned int offset)
{
	struct gpio_mockup_chip *chip = FUNC0(gc);

	FUNC1(&chip->lock);
	chip->lines[offset].dir = GPIO_MOCKUP_DIR_IN;
	FUNC2(&chip->lock);

	return 0;
}