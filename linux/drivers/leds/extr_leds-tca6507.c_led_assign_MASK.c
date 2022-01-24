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
struct tca6507_led {scalar_t__ offtime; scalar_t__ ontime; struct tca6507_chip* chip; } ;
struct tca6507_chip {int /*<<< orphan*/  work; scalar_t__ reg_set; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (struct tca6507_led*) ; 
 int /*<<< orphan*/  FUNC1 (struct tca6507_led*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct tca6507_led *led)
{
	struct tca6507_chip *tca = led->chip;
	int err;
	unsigned long flags;

	FUNC3(&tca->lock, flags);
	FUNC1(led);
	err = FUNC0(led);
	if (err) {
		/*
		 * Can only fail on timer setup.  In that case we need
		 * to re-establish as steady level.
		 */
		led->ontime = 0;
		led->offtime = 0;
		FUNC0(led);
	}
	FUNC4(&tca->lock, flags);

	if (tca->reg_set)
		FUNC2(&tca->work);
	return err;
}