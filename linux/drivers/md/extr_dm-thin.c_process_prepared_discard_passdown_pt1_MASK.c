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
struct thin_c {struct pool* pool; int /*<<< orphan*/  td; } ;
struct pool {int /*<<< orphan*/  pool_md; int /*<<< orphan*/  mapping_pool; int /*<<< orphan*/  pmd; } ;
struct dm_thin_new_mapping {scalar_t__ data_block; scalar_t__ maybe_shared; int /*<<< orphan*/  cell; int /*<<< orphan*/  bio; scalar_t__ virt_end; scalar_t__ virt_begin; struct thin_c* tc; } ;
struct discard_op {int dummy; } ;
struct bio {struct dm_thin_new_mapping* bi_private; int /*<<< orphan*/  bi_end_io; } ;
typedef  scalar_t__ dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (struct discard_op*,struct thin_c*,struct bio*) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thin_c*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct discard_op*,int) ; 
 int FUNC9 (struct discard_op*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct dm_thin_new_mapping*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct pool*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct dm_thin_new_mapping*,struct bio*) ; 
 int /*<<< orphan*/  passdown_endio ; 
 int /*<<< orphan*/  FUNC13 (struct dm_thin_new_mapping*) ; 

__attribute__((used)) static void FUNC14(struct dm_thin_new_mapping *m)
{
	int r;
	struct thin_c *tc = m->tc;
	struct pool *pool = tc->pool;
	struct bio *discard_parent;
	dm_block_t data_end = m->data_block + (m->virt_end - m->virt_begin);

	/*
	 * Only this thread allocates blocks, so we can be sure that the
	 * newly unmapped blocks will not be allocated before the end of
	 * the function.
	 */
	r = FUNC7(tc->td, m->virt_begin, m->virt_end);
	if (r) {
		FUNC11(pool, "dm_thin_remove_range", r);
		FUNC3(m->bio);
		FUNC4(tc, m->cell);
		FUNC10(m, &pool->mapping_pool);
		return;
	}

	/*
	 * Increment the unmapped blocks.  This prevents a race between the
	 * passdown io and reallocation of freed blocks.
	 */
	r = FUNC6(pool->pmd, m->data_block, data_end);
	if (r) {
		FUNC11(pool, "dm_pool_inc_data_range", r);
		FUNC3(m->bio);
		FUNC4(tc, m->cell);
		FUNC10(m, &pool->mapping_pool);
		return;
	}

	discard_parent = FUNC2(GFP_NOIO, 1);
	if (!discard_parent) {
		FUNC0("%s: unable to allocate top level discard bio for passdown. Skipping passdown.",
		       FUNC5(tc->pool->pool_md));
		FUNC13(m);

	} else {
		discard_parent->bi_end_io = passdown_endio;
		discard_parent->bi_private = m;

		if (m->maybe_shared)
			FUNC12(m, discard_parent);
		else {
			struct discard_op op;

			FUNC1(&op, tc, discard_parent);
			r = FUNC9(&op, m->data_block, data_end);
			FUNC8(&op, r);
		}
	}
}