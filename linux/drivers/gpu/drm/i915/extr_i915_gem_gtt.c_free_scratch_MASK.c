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
struct i915_address_space {int top; int /*<<< orphan*/ * scratch; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct i915_address_space *vm)
{
	int i;

	if (!FUNC3(&vm->scratch[0])) /* set to 0 on clones */
		return;

	for (i = 1; i <= vm->top; i++) {
		if (!FUNC3(&vm->scratch[i]))
			break;
		FUNC0(vm, FUNC2(&vm->scratch[i]));
	}

	FUNC1(vm);
}