#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct i915_address_space {int /*<<< orphan*/  top; int /*<<< orphan*/  total; } ;
struct TYPE_2__ {int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int GEN8_PTE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct i915_address_space*,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_address_space*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (struct i915_address_space*) ; 
 int FUNC6 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct i915_address_space *vm,
			    u64 start, u64 length)
{
	u64 from;
	int err;

	FUNC1(!FUNC2(start, FUNC0(GEN8_PTE_SHIFT)));
	FUNC1(!FUNC2(length, FUNC0(GEN8_PTE_SHIFT)));
	FUNC1(FUNC6(start, length, vm->total));

	start >>= GEN8_PTE_SHIFT;
	length >>= GEN8_PTE_SHIFT;
	FUNC1(length == 0);
	from = start;

	err = FUNC3(vm, FUNC5(vm)->pd,
				 &start, start + length, vm->top);
	if (FUNC7(err && from != start))
		FUNC4(vm, FUNC5(vm)->pd,
				   from, start, vm->top);

	return err;
}