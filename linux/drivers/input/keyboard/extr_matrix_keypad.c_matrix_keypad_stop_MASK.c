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
struct matrix_keypad {int stopped; int /*<<< orphan*/  work; int /*<<< orphan*/  lock; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct matrix_keypad*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct matrix_keypad* FUNC2 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct input_dev *dev)
{
	struct matrix_keypad *keypad = FUNC2(dev);

	FUNC3(&keypad->lock);
	keypad->stopped = true;
	FUNC4(&keypad->lock);

	FUNC1(&keypad->work);
	/*
	 * matrix_keypad_scan() will leave IRQs enabled;
	 * we should disable them now.
	 */
	FUNC0(keypad);
}