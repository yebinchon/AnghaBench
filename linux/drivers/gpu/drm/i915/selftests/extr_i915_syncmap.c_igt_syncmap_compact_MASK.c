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
typedef  unsigned int u64 ;
struct i915_syncmap {unsigned int height; int bitmap; struct i915_syncmap* parent; int /*<<< orphan*/  prefix; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int EINVAL ; 
 int ENODEV ; 
 unsigned int KSYNCMAP ; 
 unsigned int SHIFT ; 
 struct i915_syncmap** FUNC2 (struct i915_syncmap*) ; 
 int FUNC3 (struct i915_syncmap**) ; 
 int FUNC4 (struct i915_syncmap*,int) ; 
 unsigned int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_syncmap**) ; 
 int FUNC7 (struct i915_syncmap**,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static int FUNC11(void *arg)
{
	struct i915_syncmap *sync;
	unsigned int idx, order;
	int err = -ENODEV;

	FUNC6(&sync);

	/*
	 * The syncmap are "space efficient" compressed radix trees - any
	 * branch with only one child is skipped and replaced by the child.
	 *
	 * If we construct a tree with ids that are neighbouring at a non-zero
	 * height, we form a join but each child of that join is directly a
	 * leaf holding the single id.
	 */
	for (order = SHIFT; order < 64; order += SHIFT) {
		err = FUNC3(&sync);
		if (err)
			goto out;

		/* Create neighbours in the parent */
		for (idx = 0; idx < KSYNCMAP; idx++) {
			u64 context = idx * FUNC1(order) + idx;

			err = FUNC7(&sync, context, 0);
			if (err)
				goto out;

			if (sync->height) {
				FUNC10("Inserting context=%llx (order=%d, idx=%d) did not return leaf (height=%d, prefix=%llx\n",
				       context, order, idx,
				       sync->height, sync->prefix);
				err = -EINVAL;
				goto out;
			}
		}

		sync = sync->parent;
		if (sync->parent) {
			FUNC10("Parent (join) of last leaf was not the sync!\n");
			err = -EINVAL;
			goto out;
		}

		if (sync->height != order) {
			FUNC10("Join does not have the expected height, found %d, expected %d\n",
			       sync->height, order);
			err = -EINVAL;
			goto out;
		}

		if (sync->bitmap != FUNC0(KSYNCMAP) - 1) {
			FUNC10("Join is not full!, found %x (%d) expected %lx (%d)\n",
			       sync->bitmap, FUNC5(sync->bitmap),
			       FUNC0(KSYNCMAP) - 1, KSYNCMAP);
			err = -EINVAL;
			goto out;
		}

		/* Each of our children should be a leaf */
		for (idx = 0; idx < KSYNCMAP; idx++) {
			struct i915_syncmap *leaf = FUNC2(sync)[idx];

			if (leaf->height) {
				FUNC10("Child %d is a not leaf!\n", idx);
				err = -EINVAL;
				goto out;
			}

			if (leaf->parent != sync) {
				FUNC10("Child %d is not attached to us!\n",
				       idx);
				err = -EINVAL;
				goto out;
			}

			if (!FUNC9(leaf->bitmap)) {
				FUNC10("Child %d holds more than one id, found %x (%d)\n",
				       idx, leaf->bitmap, FUNC5(leaf->bitmap));
				err = -EINVAL;
				goto out;
			}

			if (leaf->bitmap != FUNC0(idx)) {
				FUNC10("Child %d has wrong seqno idx, found %d, expected %d\n",
				       idx, FUNC8(leaf->bitmap), idx);
				err = -EINVAL;
				goto out;
			}
		}
	}
out:
	return FUNC4(sync, err);
}