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
typedef  scalar_t__ u64 ;
struct i915_buddy_mm {int max_order; scalar_t__ size; } ;
struct i915_buddy_block {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct i915_buddy_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i915_buddy_block*) ; 
 int /*<<< orphan*/  blocks ; 
 struct i915_buddy_block* FUNC3 (struct i915_buddy_mm*,int) ; 
 int FUNC4 (struct i915_buddy_block*) ; 
 scalar_t__ FUNC5 (struct i915_buddy_mm*,struct i915_buddy_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_buddy_mm*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_buddy_mm*,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct i915_buddy_mm*,scalar_t__,scalar_t__) ; 
 int FUNC9 (struct i915_buddy_mm*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC10 (struct i915_buddy_mm*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,...) ; 

__attribute__((used)) static int FUNC15(void *arg)
{
	struct i915_buddy_mm mm;
	int max_order;
	u64 chunk_size;
	u64 mm_size;
	int err;

	FUNC11(&mm_size, &chunk_size);

	FUNC14("buddy_init with size=%llx, chunk_size=%llx\n", mm_size, chunk_size);

	err = FUNC8(&mm, mm_size, chunk_size);
	if (err) {
		FUNC13("buddy_init failed(%d)\n", err);
		return err;
	}

	for (max_order = mm.max_order; max_order >= 0; max_order--) {
		struct i915_buddy_block *block;
		int order;
		FUNC1(blocks);
		u64 total;

		err = FUNC10(&mm);
		if (err) {
			FUNC13("pre-mm check failed, abort\n");
			break;
		}

		FUNC14("filling from max_order=%u\n", max_order);

		order = max_order;
		total = 0;

		do {
retry:
			block = FUNC3(&mm, order);
			if (FUNC0(block)) {
				err = FUNC2(block);
				if (err == -ENOMEM) {
					FUNC14("buddy_alloc hit -ENOMEM with order=%d\n",
						order);
				} else {
					if (order--) {
						err = 0;
						goto retry;
					}

					FUNC13("buddy_alloc with order=%d failed(%d)\n",
					       order, err);
				}

				break;
			}

			FUNC12(&block->link, &blocks);

			if (FUNC4(block) != order) {
				FUNC13("buddy_alloc order mismatch\n");
				err = -EINVAL;
				break;
			}

			total += FUNC5(&mm, block);
		} while (total < mm.size);

		if (!err)
			err = FUNC9(&mm, &blocks, total, false);

		FUNC7(&mm, &blocks);

		if (!err) {
			err = FUNC10(&mm);
			if (err)
				FUNC13("post-mm check failed\n");
		}

		if (err)
			break;
	}

	if (err == -ENOMEM)
		err = 0;

	FUNC6(&mm);

	return err;
}