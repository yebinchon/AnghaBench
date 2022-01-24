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
struct platform_device {int dummy; } ;
struct matrix_keypad {int /*<<< orphan*/  input_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct matrix_keypad*) ; 
 int /*<<< orphan*/  FUNC2 (struct matrix_keypad*) ; 
 struct matrix_keypad* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct matrix_keypad *keypad = FUNC3(pdev);

	FUNC2(keypad);
	FUNC0(keypad->input_dev);
	FUNC1(keypad);

	return 0;
}