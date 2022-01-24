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
struct i915_syncmap {int /*<<< orphan*/  prefix; int /*<<< orphan*/  height; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int EINVAL ; 
 int ENODEV ; 
 unsigned int KSYNCMAP ; 
 int SHIFT ; 
 int FUNC1 (struct i915_syncmap*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_syncmap**) ; 
 scalar_t__ FUNC3 (struct i915_syncmap**,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i915_syncmap**,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,unsigned int,unsigned int,...) ; 

__attribute__((used)) static int FUNC6(void *arg)
{
	struct i915_syncmap *sync;
	unsigned int step, order, idx;
	int err = -ENODEV;

	FUNC2(&sync);

	/*
	 * Check that we can split a compacted branch by replacing it with
	 * a join.
	 */
	for (step = 0; step < KSYNCMAP; step++) {
		for (order = 64 - SHIFT; order > 0; order -= SHIFT) {
			u64 context = step * FUNC0(order);

			err = FUNC4(&sync, context, 0);
			if (err)
				goto out;

			if (sync->height) {
				FUNC5("Inserting context=%llx (order=%d, step=%d) did not return leaf (height=%d, prefix=%llx\n",
				       context, order, step, sync->height, sync->prefix);
				err = -EINVAL;
				goto out;
			}
		}
	}

	for (step = 0; step < KSYNCMAP; step++) {
		for (order = SHIFT; order < 64; order += SHIFT) {
			u64 context = step * FUNC0(order);

			if (!FUNC3(&sync, context, 0)) {
				FUNC5("1: context %llx (order=%d, step=%d) not found\n",
				       context, order, step);
				err = -EINVAL;
				goto out;
			}

			for (idx = 1; idx < KSYNCMAP; idx++) {
				if (FUNC3(&sync, context + idx, 0)) {
					FUNC5("1: context %llx (order=%d, step=%d) should not exist\n",
					       context + idx, order, step);
					err = -EINVAL;
					goto out;
				}
			}
		}
	}

	for (order = SHIFT; order < 64; order += SHIFT) {
		for (step = 0; step < KSYNCMAP; step++) {
			u64 context = step * FUNC0(order);

			if (!FUNC3(&sync, context, 0)) {
				FUNC5("2: context %llx (order=%d, step=%d) not found\n",
				       context, order, step);
				err = -EINVAL;
				goto out;
			}
		}
	}

out:
	return FUNC1(sync, err);
}