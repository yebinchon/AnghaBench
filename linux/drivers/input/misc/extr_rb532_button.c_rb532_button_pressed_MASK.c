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

/* Variables and functions */
 int /*<<< orphan*/  GPIO_BTN_S1 ; 
 int /*<<< orphan*/  LO_FOFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(void)
{
	int val;

	FUNC3(0, LO_FOFF);
	FUNC0(GPIO_BTN_S1);

	val = FUNC1(GPIO_BTN_S1);

	FUNC2(GPIO_BTN_S1);
	FUNC3(LO_FOFF, 0);

	return !val;
}