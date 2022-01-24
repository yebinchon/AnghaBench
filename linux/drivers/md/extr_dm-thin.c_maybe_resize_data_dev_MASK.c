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
struct pool_c {struct pool* pool; } ;
struct pool {int /*<<< orphan*/  pmd; int /*<<< orphan*/  pool_md; int /*<<< orphan*/  sectors_per_block; } ;
struct dm_target {scalar_t__ len; struct pool_c* private; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,unsigned long long) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct pool*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dm_target *ti, bool *need_commit)
{
	int r;
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;
	sector_t data_size = ti->len;
	dm_block_t sb_data_size;

	*need_commit = false;

	(void) FUNC7(data_size, pool->sectors_per_block);

	r = FUNC3(pool->pmd, &sb_data_size);
	if (r) {
		FUNC0("%s: failed to retrieve data device size",
		      FUNC2(pool->pool_md));
		return r;
	}

	if (data_size < sb_data_size) {
		FUNC0("%s: pool target (%llu blocks) too small: expected %llu",
		      FUNC2(pool->pool_md),
		      (unsigned long long)data_size, sb_data_size);
		return -EINVAL;

	} else if (data_size > sb_data_size) {
		if (FUNC4(pool->pmd)) {
			FUNC0("%s: unable to grow the data device until repaired.",
			      FUNC2(pool->pool_md));
			return 0;
		}

		if (sb_data_size)
			FUNC1("%s: growing the data device from %llu to %llu blocks",
			       FUNC2(pool->pool_md),
			       sb_data_size, (unsigned long long)data_size);
		r = FUNC5(pool->pmd, data_size);
		if (r) {
			FUNC6(pool, "dm_pool_resize_data_dev", r);
			return r;
		}

		*need_commit = true;
	}

	return 0;
}