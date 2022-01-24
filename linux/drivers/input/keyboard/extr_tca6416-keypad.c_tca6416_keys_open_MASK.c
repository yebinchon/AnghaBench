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
struct tca6416_keypad_chip {int /*<<< orphan*/  irqnum; int /*<<< orphan*/  dwork; scalar_t__ use_polling; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct tca6416_keypad_chip* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tca6416_keypad_chip*) ; 

__attribute__((used)) static int FUNC5(struct input_dev *dev)
{
	struct tca6416_keypad_chip *chip = FUNC1(dev);

	/* Get initial device state in case it has switches */
	FUNC4(chip);

	if (chip->use_polling)
		FUNC3(&chip->dwork, FUNC2(100));
	else
		FUNC0(chip->irqnum);

	return 0;
}