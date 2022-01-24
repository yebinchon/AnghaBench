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
struct matrix_keypad {int stopped; int /*<<< orphan*/  work; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct matrix_keypad* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev)
{
	struct matrix_keypad *keypad = FUNC0(dev);

	keypad->stopped = false;
	FUNC1();

	/*
	 * Schedule an immediate key scan to capture current key state;
	 * columns will be activated and IRQs be enabled after the scan.
	 */
	FUNC2(&keypad->work, 0);

	return 0;
}