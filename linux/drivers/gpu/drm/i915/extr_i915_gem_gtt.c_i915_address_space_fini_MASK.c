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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  pvec; } ;
struct i915_address_space {int /*<<< orphan*/  mutex; int /*<<< orphan*/  mm; TYPE_1__ free_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_address_space*,int) ; 

__attribute__((used)) static void FUNC7(struct i915_address_space *vm)
{
	FUNC4(&vm->free_pages.lock);
	if (FUNC3(&vm->free_pages.pvec))
		FUNC6(vm, true);
	FUNC0(FUNC3(&vm->free_pages.pvec));
	FUNC5(&vm->free_pages.lock);

	FUNC1(&vm->mm);

	FUNC2(&vm->mutex);
}