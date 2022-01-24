#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thin_c {TYPE_1__* pool_dev; struct pool* pool; } ;
struct TYPE_4__ {scalar_t__ zero_new_blocks; } ;
struct pool {int sectors_per_block; TYPE_2__ pf; int /*<<< orphan*/  copier; int /*<<< orphan*/  shared_read_ds; } ;
struct dm_thin_new_mapping {int virt_begin; int virt_end; int data_block; int /*<<< orphan*/  prepare_actions; int /*<<< orphan*/  list; struct dm_bio_prison_cell* cell; struct thin_c* tc; } ;
struct dm_io_region {int sector; int count; int /*<<< orphan*/  bdev; } ;
struct dm_dev {int /*<<< orphan*/  bdev; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef  int sector_t ;
typedef  int dm_block_t ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_thin_new_mapping*) ; 
 int /*<<< orphan*/  copy_complete ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dm_io_region*,int,struct dm_io_region*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_thin_new_mapping*) ; 
 struct dm_thin_new_mapping* FUNC5 (struct pool*) ; 
 scalar_t__ FUNC6 (struct pool*,struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (struct thin_c*,struct dm_thin_new_mapping*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct thin_c*,struct bio*,int,struct dm_thin_new_mapping*) ; 

__attribute__((used)) static void FUNC9(struct thin_c *tc, dm_block_t virt_block,
			  struct dm_dev *origin, dm_block_t data_origin,
			  dm_block_t data_dest,
			  struct dm_bio_prison_cell *cell, struct bio *bio,
			  sector_t len)
{
	struct pool *pool = tc->pool;
	struct dm_thin_new_mapping *m = FUNC5(pool);

	m->tc = tc;
	m->virt_begin = virt_block;
	m->virt_end = virt_block + 1u;
	m->data_block = data_dest;
	m->cell = cell;

	/*
	 * quiesce action + copy action + an extra reference held for the
	 * duration of this function (we may need to inc later for a
	 * partial zero).
	 */
	FUNC1(&m->prepare_actions, 3);

	if (!FUNC3(pool->shared_read_ds, &m->list))
		FUNC2(m); /* already quiesced */

	/*
	 * IO to pool_dev remaps to the pool target's data_dev.
	 *
	 * If the whole block of data is being overwritten, we can issue the
	 * bio immediately. Otherwise we use kcopyd to clone the data first.
	 */
	if (FUNC6(pool, bio))
		FUNC8(tc, bio, data_dest, m);
	else {
		struct dm_io_region from, to;

		from.bdev = origin->bdev;
		from.sector = data_origin * pool->sectors_per_block;
		from.count = len;

		to.bdev = tc->pool_dev->bdev;
		to.sector = data_dest * pool->sectors_per_block;
		to.count = len;

		FUNC4(pool->copier, &from, 1, &to,
			       0, copy_complete, m);

		/*
		 * Do we need to zero a tail region?
		 */
		if (len < pool->sectors_per_block && pool->pf.zero_new_blocks) {
			FUNC0(&m->prepare_actions);
			FUNC7(tc, m,
				data_dest * pool->sectors_per_block + len,
				(data_dest + 1) * pool->sectors_per_block);
		}
	}

	FUNC2(m); /* drop our ref */
}