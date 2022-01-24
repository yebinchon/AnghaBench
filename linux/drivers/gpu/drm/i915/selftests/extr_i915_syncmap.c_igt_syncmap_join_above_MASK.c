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
typedef  int /*<<< orphan*/  u64 ;
struct i915_syncmap {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  height; struct i915_syncmap* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int EINVAL ; 
 scalar_t__ SHIFT ; 
 size_t FUNC1 (struct i915_syncmap*,int /*<<< orphan*/ ) ; 
 struct i915_syncmap** FUNC2 (struct i915_syncmap*) ; 
 int FUNC3 (struct i915_syncmap**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i915_syncmap*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_syncmap**) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(void *arg)
{
	struct i915_syncmap *sync;
	unsigned int pass, order;
	int err;

	FUNC6(&sync);

	/*
	 * When we have a new id that doesn't fit inside the existing tree,
	 * we need to add a new layer above.
	 *
	 * 1: 0x00000001
	 * 2: 0x00000010
	 * 3: 0x00000100
	 * 4: 0x00001000
	 * ...
	 * Each pass the common prefix shrinks and we have to insert a join.
	 * Each join will only contain two branches, the latest of which
	 * is always a leaf.
	 *
	 * If we then reuse the same set of contexts, we expect to build an
	 * identical tree.
	 */
	for (pass = 0; pass < 3; pass++) {
		for (order = 0; order < 64; order += SHIFT) {
			u64 context = FUNC0(order);
			struct i915_syncmap *join;

			err = FUNC3(&sync, context, 0);
			if (err)
				goto out;

			join = sync->parent;
			if (!join) /* very first insert will have no parents */
				continue;

			if (!join->height) {
				FUNC7("Parent with no height!\n");
				err = -EINVAL;
				goto out;
			}

			if (FUNC5(join->bitmap) != 2) {
				FUNC7("Join does not have 2 children: %x (%d)\n",
				       join->bitmap, FUNC5(join->bitmap));
				err = -EINVAL;
				goto out;
			}

			if (FUNC2(join)[FUNC1(join, context)] != sync) {
				FUNC7("Leaf misplaced in parent!\n");
				err = -EINVAL;
				goto out;
			}
		}
	}
out:
	return FUNC4(sync, err);
}