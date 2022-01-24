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
typedef  scalar_t__ uint64_t ;
struct ro_spine {int dummy; } ;
struct dm_btree_info {unsigned int levels; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int ENODATA ; 
 int FUNC0 (struct ro_spine*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct dm_btree_info*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ro_spine*) ; 
 int /*<<< orphan*/  FUNC3 (struct ro_spine*,struct dm_btree_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lower_bound ; 

int FUNC5(struct dm_btree_info *info, dm_block_t root,
			 uint64_t *keys, uint64_t *rkey, void *value_le)
{
	unsigned level;
	int r = -ENODATA;
	__le64 internal_value_le;
	struct ro_spine spine;

	FUNC3(&spine, info);
	for (level = 0; level < info->levels - 1u; level++) {
		r = FUNC0(&spine, root, keys[level],
				     lower_bound, rkey,
				     &internal_value_le, sizeof(uint64_t));
		if (r)
			goto out;

		if (*rkey != keys[level]) {
			r = -ENODATA;
			goto out;
		}

		root = FUNC4(internal_value_le);
	}

	r = FUNC1(info, root, keys[level], rkey, value_le);
out:
	FUNC2(&spine);
	return r;
}