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
 int /*<<< orphan*/  FUNC3 (struct i915_address_space*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (struct i915_address_space*) ; 
 int FUNC5 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct i915_address_space *vm,
			     u64 start, u64 length)
{
	FUNC1(!FUNC2(start, FUNC0(GEN8_PTE_SHIFT)));
	FUNC1(!FUNC2(length, FUNC0(GEN8_PTE_SHIFT)));
	FUNC1(FUNC5(start, length, vm->total));

	start >>= GEN8_PTE_SHIFT;
	length >>= GEN8_PTE_SHIFT;
	FUNC1(length == 0);

	FUNC3(vm, FUNC4(vm)->pd,
			   start, start + length, vm->top);
}