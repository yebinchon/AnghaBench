#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  color; } ;
struct TYPE_4__ {TYPE_1__ head_node; } ;
struct i915_address_space {int /*<<< orphan*/  bound_list; int /*<<< orphan*/  unbound_list; int /*<<< orphan*/  free_pages; TYPE_2__ mm; int /*<<< orphan*/  total; int /*<<< orphan*/  mutex; int /*<<< orphan*/  i915; int /*<<< orphan*/  rcu; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I915_COLOR_UNEVICTABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  __i915_vm_release ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct i915_address_space *vm, int subclass)
{
	FUNC5(&vm->ref);
	FUNC2(&vm->rcu, __i915_vm_release);

	/*
	 * The vm->mutex must be reclaim safe (for use in the shrinker).
	 * Do a dummy acquire now under fs_reclaim so that any allocation
	 * attempt holding the lock is immediately reported by lockdep.
	 */
	FUNC7(&vm->mutex);
	FUNC6(&vm->mutex, subclass);
	FUNC4(vm->i915, &vm->mutex);

	FUNC0(!vm->total);
	FUNC3(&vm->mm, 0, vm->total);
	vm->mm.head_node.color = I915_COLOR_UNEVICTABLE;

	FUNC8(&vm->free_pages);

	FUNC1(&vm->unbound_list);
	FUNC1(&vm->bound_list);
}