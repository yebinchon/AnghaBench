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
struct pool {int /*<<< orphan*/  pmd; int /*<<< orphan*/  pool_md; int /*<<< orphan*/  md_dev; } ;
struct dm_target {struct pool_c* private; } ;
typedef  scalar_t__ dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 scalar_t__ PM_OUT_OF_METADATA_SPACE ; 
 int /*<<< orphan*/  PM_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct pool*) ; 
 int /*<<< orphan*/  FUNC8 (struct pool*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct dm_target *ti, bool *need_commit)
{
	int r;
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;
	dm_block_t metadata_dev_size, sb_metadata_dev_size;

	*need_commit = false;

	metadata_dev_size = FUNC6(pool->md_dev);

	r = FUNC3(pool->pmd, &sb_metadata_dev_size);
	if (r) {
		FUNC0("%s: failed to retrieve metadata device size",
		      FUNC2(pool->pool_md));
		return r;
	}

	if (metadata_dev_size < sb_metadata_dev_size) {
		FUNC0("%s: metadata device (%llu blocks) too small: expected %llu",
		      FUNC2(pool->pool_md),
		      metadata_dev_size, sb_metadata_dev_size);
		return -EINVAL;

	} else if (metadata_dev_size > sb_metadata_dev_size) {
		if (FUNC4(pool->pmd)) {
			FUNC0("%s: unable to grow the metadata device until repaired.",
			      FUNC2(pool->pool_md));
			return 0;
		}

		FUNC10(pool->md_dev);
		FUNC1("%s: growing the metadata device from %llu to %llu blocks",
		       FUNC2(pool->pool_md),
		       sb_metadata_dev_size, metadata_dev_size);

		if (FUNC7(pool) == PM_OUT_OF_METADATA_SPACE)
			FUNC9(pool, PM_WRITE);

		r = FUNC5(pool->pmd, metadata_dev_size);
		if (r) {
			FUNC8(pool, "dm_pool_resize_metadata_dev", r);
			return r;
		}

		*need_commit = true;
	}

	return 0;
}