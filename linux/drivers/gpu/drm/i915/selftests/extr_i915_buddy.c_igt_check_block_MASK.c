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
typedef  int u64 ;
struct i915_buddy_mm {int chunk_size; } ;
struct i915_buddy_block {scalar_t__ parent; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int I915_BUDDY_ALLOCATED ; 
 unsigned int I915_BUDDY_FREE ; 
 unsigned int I915_BUDDY_SPLIT ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct i915_buddy_block* FUNC1 (struct i915_buddy_block*) ; 
 int FUNC2 (struct i915_buddy_block*) ; 
 int FUNC3 (struct i915_buddy_mm*,struct i915_buddy_block*) ; 
 unsigned int FUNC4 (struct i915_buddy_block*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct i915_buddy_mm *mm,
			   struct i915_buddy_block *block)
{
	struct i915_buddy_block *buddy;
	unsigned int block_state;
	u64 block_size;
	u64 offset;
	int err = 0;

	block_state = FUNC4(block);

	if (block_state != I915_BUDDY_ALLOCATED &&
	    block_state != I915_BUDDY_FREE &&
	    block_state != I915_BUDDY_SPLIT) {
		FUNC6("block state mismatch\n");
		err = -EINVAL;
	}

	block_size = FUNC3(mm, block);
	offset = FUNC2(block);

	if (block_size < mm->chunk_size) {
		FUNC6("block size smaller than min size\n");
		err = -EINVAL;
	}

	if (!FUNC5(block_size)) {
		FUNC6("block size not power of two\n");
		err = -EINVAL;
	}

	if (!FUNC0(block_size, mm->chunk_size)) {
		FUNC6("block size not aligned to min size\n");
		err = -EINVAL;
	}

	if (!FUNC0(offset, mm->chunk_size)) {
		FUNC6("block offset not aligned to min size\n");
		err = -EINVAL;
	}

	if (!FUNC0(offset, block_size)) {
		FUNC6("block offset not aligned to block size\n");
		err = -EINVAL;
	}

	buddy = FUNC1(block);

	if (!buddy && block->parent) {
		FUNC6("buddy has gone fishing\n");
		err = -EINVAL;
	}

	if (buddy) {
		if (FUNC2(buddy) != (offset ^ block_size)) {
			FUNC6("buddy has wrong offset\n");
			err = -EINVAL;
		}

		if (FUNC3(mm, buddy) != block_size) {
			FUNC6("buddy size mismatch\n");
			err = -EINVAL;
		}

		if (FUNC4(buddy) == block_state &&
		    block_state == I915_BUDDY_FREE) {
			FUNC6("block and its buddy are free\n");
			err = -EINVAL;
		}
	}

	return err;
}