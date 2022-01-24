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
struct i915_ppgtt {int /*<<< orphan*/  pd; } ;
struct i915_address_space {int /*<<< orphan*/  top; int /*<<< orphan*/  i915; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_ppgtt*,int) ; 
 struct i915_ppgtt* FUNC4 (struct i915_address_space*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct i915_address_space *vm)
{
	struct i915_ppgtt *ppgtt = FUNC4(vm);

	if (FUNC5(vm->i915))
		FUNC3(ppgtt, false);

	FUNC0(vm, ppgtt->pd, FUNC2(vm), vm->top);
	FUNC1(vm);
}