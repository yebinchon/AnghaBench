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
struct i915_gem_context {int /*<<< orphan*/  vm; } ;
struct i915_address_space {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 struct i915_address_space* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_gem_context*,struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_address_space*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct i915_gem_context *dst,
		    struct i915_gem_context *src)
{
	struct i915_address_space *vm;

	FUNC4();
	do {
		vm = FUNC0(src->vm);
		if (!vm)
			break;

		if (!FUNC3(&vm->ref))
			continue;

		/*
		 * This ppgtt may have be reallocated between
		 * the read and the kref, and reassigned to a third
		 * context. In order to avoid inadvertent sharing
		 * of this ppgtt with that third context (and not
		 * src), we have to confirm that we have the same
		 * ppgtt after passing through the strong memory
		 * barrier implied by a successful
		 * kref_get_unless_zero().
		 *
		 * Once we have acquired the current ppgtt of src,
		 * we no longer care if it is released from src, as
		 * it cannot be reallocated elsewhere.
		 */

		if (vm == FUNC0(src->vm))
			break;

		FUNC2(vm);
	} while (1);
	FUNC5();

	if (vm) {
		FUNC1(dst, vm);
		FUNC2(vm);
	}

	return 0;
}