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
struct tc_keypad {int dummy; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 struct tc_keypad* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct tc_keypad*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *input)
{
	struct tc_keypad *keypad = FUNC0(input);

	/* disable the keypad module */
	FUNC1(keypad);
}