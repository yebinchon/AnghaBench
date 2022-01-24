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
struct thin_c {struct pool* pool; } ;
struct pool {int /*<<< orphan*/  pmd; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  PM_OUT_OF_DATA_SPACE ; 
 scalar_t__ PM_WRITE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pool*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct pool*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct pool*) ; 
 int /*<<< orphan*/  FUNC7 (struct pool*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pool*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct thin_c *tc, dm_block_t *result)
{
	int r;
	dm_block_t free_blocks;
	struct pool *pool = tc->pool;

	if (FUNC0(FUNC6(pool) != PM_WRITE))
		return -EINVAL;

	r = FUNC4(pool->pmd, &free_blocks);
	if (r) {
		FUNC7(pool, "dm_pool_get_free_block_count", r);
		return r;
	}

	FUNC1(pool, free_blocks);

	if (!free_blocks) {
		/*
		 * Try to commit to see if that will free up some
		 * more space.
		 */
		r = FUNC2(pool);
		if (r)
			return r;

		r = FUNC4(pool->pmd, &free_blocks);
		if (r) {
			FUNC7(pool, "dm_pool_get_free_block_count", r);
			return r;
		}

		if (!free_blocks) {
			FUNC8(pool, PM_OUT_OF_DATA_SPACE);
			return -ENOSPC;
		}
	}

	r = FUNC3(pool->pmd, result);
	if (r) {
		if (r == -ENOSPC)
			FUNC8(pool, PM_OUT_OF_DATA_SPACE);
		else
			FUNC7(pool, "dm_pool_alloc_data_block", r);
		return r;
	}

	r = FUNC5(pool->pmd, &free_blocks);
	if (r) {
		FUNC7(pool, "dm_pool_get_free_metadata_block_count", r);
		return r;
	}

	if (!free_blocks) {
		/* Let's commit before we use up the metadata reserve. */
		r = FUNC2(pool);
		if (r)
			return r;
	}

	return 0;
}