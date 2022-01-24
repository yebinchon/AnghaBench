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
struct input_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct tc_keypad* FUNC1 (struct input_dev*) ; 
 int FUNC2 (struct tc_keypad*) ; 
 int FUNC3 (struct tc_keypad*) ; 

__attribute__((used)) static int FUNC4(struct input_dev *input)
{
	int error;
	struct tc_keypad *keypad = FUNC1(input);

	/* enable the keypad module */
	error = FUNC2(keypad);
	if (error < 0) {
		FUNC0(&input->dev, "failed to enable keypad module\n");
		return error;
	}

	error = FUNC3(keypad);
	if (error < 0) {
		FUNC0(&input->dev, "failed to configure keypad module\n");
		return error;
	}

	return 0;
}