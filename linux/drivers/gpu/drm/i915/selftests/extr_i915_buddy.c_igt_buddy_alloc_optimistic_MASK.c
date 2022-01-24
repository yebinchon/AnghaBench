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
struct i915_buddy_mm {int const max_order; } ;
struct i915_buddy_block {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_buddy_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 int FUNC3 (struct i915_buddy_block*) ; 
 int /*<<< orphan*/  blocks ; 
 struct i915_buddy_block* FUNC4 (struct i915_buddy_mm*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_buddy_mm*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_buddy_mm*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct i915_buddy_mm*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static int FUNC11(void *arg)
{
	const int max_order = 16;
	struct i915_buddy_block *block;
	struct i915_buddy_mm mm;
	FUNC2(blocks);
	int order;
	int err;

	/*
	 * Create a mm with one block of each order available, and
	 * try to allocate them all.
	 */

	err = FUNC7(&mm,
			      PAGE_SIZE * ((1 << (max_order + 1)) - 1),
			      PAGE_SIZE);
	if (err) {
		FUNC9("buddy_init failed(%d)\n", err);
		return err;
	}
	FUNC0(mm.max_order != max_order);

	for (order = 0; order <= max_order; order++) {
		block = FUNC4(&mm, order);
		if (FUNC1(block)) {
			FUNC10("buddy_alloc hit -ENOMEM with order=%d\n",
				order);
			err = FUNC3(block);
			goto err;
		}

		FUNC8(&block->link, &blocks);
	}

	/* Should be completely full! */
	block = FUNC4(&mm, 0);
	if (!FUNC1(block)) {
		FUNC10("buddy_alloc unexpectedly succeeded, it should be full!");
		FUNC8(&block->link, &blocks);
		err = -EINVAL;
		goto err;
	}

err:
	FUNC6(&mm, &blocks);
	FUNC5(&mm);
	return err;
}