#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_5__ {int (* allocate_va_range ) (TYPE_1__*,int,int) ;int /*<<< orphan*/  (* clear_range ) (TYPE_1__*,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  total; } ;
struct i915_ppgtt {TYPE_1__ vm; } ;
struct drm_i915_private {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct drm_i915_private*) ; 
 scalar_t__ FUNC1 (struct i915_ppgtt*) ; 
 int PAGE_SHIFT ; 
 int FUNC2 (struct i915_ppgtt*) ; 
 struct i915_ppgtt* FUNC3 (struct drm_i915_private*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int,...) ; 
 int FUNC9 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (TYPE_1__*,int,int) ; 
 int FUNC12 () ; 

__attribute__((used)) static int FUNC13(void *arg)
{
	struct drm_i915_private *dev_priv = arg;
	struct i915_ppgtt *ppgtt;
	u64 size, last, limit;
	int err = 0;

	/* Allocate a ppggt and try to fill the entire range */

	if (!FUNC0(dev_priv))
		return 0;

	ppgtt = FUNC3(dev_priv);
	if (FUNC1(ppgtt))
		return FUNC2(ppgtt);

	if (!ppgtt->vm.allocate_va_range)
		goto err_ppgtt_cleanup;

	/*
	 * While we only allocate the page tables here and so we could
	 * address a much larger GTT than we could actually fit into
	 * RAM, a practical limit is the amount of physical pages in the system.
	 * This should ensure that we do not run into the oomkiller during
	 * the test and take down the machine wilfully.
	 */
	limit = FUNC12() << PAGE_SHIFT;
	limit = FUNC7(ppgtt->vm.total, limit);

	/* Check we can allocate the entire range */
	for (size = 4096; size <= limit; size <<= 2) {
		err = ppgtt->vm.allocate_va_range(&ppgtt->vm, 0, size);
		if (err) {
			if (err == -ENOMEM) {
				FUNC8("[1] Ran out of memory for va_range [0 + %llx] [bit %d]\n",
					size, FUNC6(size));
				err = 0; /* virtual space too large! */
			}
			goto err_ppgtt_cleanup;
		}

		FUNC4();

		ppgtt->vm.clear_range(&ppgtt->vm, 0, size);
	}

	/* Check we can incrementally allocate the entire range */
	for (last = 0, size = 4096; size <= limit; last = size, size <<= 2) {
		err = ppgtt->vm.allocate_va_range(&ppgtt->vm,
						  last, size - last);
		if (err) {
			if (err == -ENOMEM) {
				FUNC8("[2] Ran out of memory for va_range [%llx + %llx] [bit %d]\n",
					last, size - last, FUNC6(size));
				err = 0; /* virtual space too large! */
			}
			goto err_ppgtt_cleanup;
		}

		FUNC4();
	}

err_ppgtt_cleanup:
	FUNC5(&ppgtt->vm);
	return err;
}