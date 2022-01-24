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
struct nspire_keypad {int /*<<< orphan*/  clk; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct nspire_keypad* FUNC2 (struct input_dev*) ; 
 int FUNC3 (struct nspire_keypad*) ; 

__attribute__((used)) static int FUNC4(struct input_dev *input)
{
	struct nspire_keypad *keypad = FUNC2(input);
	int error;

	error = FUNC1(keypad->clk);
	if (error)
		return error;

	error = FUNC3(keypad);
	if (error) {
		FUNC0(keypad->clk);
		return error;
	}

	return 0;
}