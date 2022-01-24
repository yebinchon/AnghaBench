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
struct samsung_keypad {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct samsung_keypad* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct samsung_keypad*) ; 

__attribute__((used)) static int FUNC2(struct input_dev *input_dev)
{
	struct samsung_keypad *keypad = FUNC0(input_dev);

	FUNC1(keypad);

	return 0;
}