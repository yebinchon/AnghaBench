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
struct max7301 {int /*<<< orphan*/  lock; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct max7301*,unsigned int,int) ; 
 struct max7301* FUNC1 (struct gpio_chip*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct gpio_chip *chip, unsigned offset, int value)
{
	struct max7301 *ts = FUNC1(chip);

	/* First 4 pins are unused in the controller */
	offset += 4;

	FUNC2(&ts->lock);

	FUNC0(ts, offset, value);

	FUNC3(&ts->lock);
}