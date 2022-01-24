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
struct pool {int /*<<< orphan*/  (* process_prepared_discard ) (struct dm_thin_new_mapping*) ;int /*<<< orphan*/  all_io_ds; } ;
struct dm_thin_new_mapping {int maybe_shared; int /*<<< orphan*/  list; struct bio* bio; struct dm_bio_prison_cell* cell; scalar_t__ data_block; scalar_t__ virt_end; scalar_t__ virt_begin; struct thin_c* tc; } ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  PHYSICAL ; 
 scalar_t__ FUNC0 (struct pool*,struct dm_cell_key*,int /*<<< orphan*/ *,struct dm_bio_prison_cell**) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct dm_cell_key*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,int*) ; 
 int FUNC5 (struct pool*) ; 
 struct dm_thin_new_mapping* FUNC6 (struct pool*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_thin_new_mapping*) ; 

__attribute__((used)) static void FUNC8(struct thin_c *tc, dm_block_t begin, dm_block_t end,
				 struct bio *bio)
{
	struct pool *pool = tc->pool;

	int r;
	bool maybe_shared;
	struct dm_cell_key data_key;
	struct dm_bio_prison_cell *data_cell;
	struct dm_thin_new_mapping *m;
	dm_block_t virt_begin, virt_end, data_begin;

	while (begin != end) {
		r = FUNC5(pool);
		if (r)
			/* we did our best */
			return;

		r = FUNC4(tc->td, begin, end, &virt_begin, &virt_end,
					      &data_begin, &maybe_shared);
		if (r)
			/*
			 * Silently fail, letting any mappings we've
			 * created complete.
			 */
			break;

		FUNC2(tc->td, PHYSICAL, data_begin, data_begin + (virt_end - virt_begin), &data_key);
		if (FUNC0(tc->pool, &data_key, NULL, &data_cell)) {
			/* contention, we'll give up with this range */
			begin = virt_end;
			continue;
		}

		/*
		 * IO may still be going to the destination block.  We must
		 * quiesce before we can do the removal.
		 */
		m = FUNC6(pool);
		m->tc = tc;
		m->maybe_shared = maybe_shared;
		m->virt_begin = virt_begin;
		m->virt_end = virt_end;
		m->data_block = data_begin;
		m->cell = data_cell;
		m->bio = bio;

		/*
		 * The parent bio must not complete before sub discard bios are
		 * chained to it (see end_discard's bio_chain)!
		 *
		 * This per-mapping bi_remaining increment is paired with
		 * the implicit decrement that occurs via bio_endio() in
		 * end_discard().
		 */
		FUNC1(bio);
		if (!FUNC3(pool->all_io_ds, &m->list))
			pool->process_prepared_discard(m);

		begin = virt_end;
	}
}