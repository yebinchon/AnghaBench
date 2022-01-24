#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thin_c {struct pool* pool; } ;
struct TYPE_2__ {scalar_t__ zero_new_blocks; } ;
struct pool {int sectors_per_block; TYPE_1__ pf; } ;
struct dm_thin_new_mapping {int virt_begin; int virt_end; int data_block; struct dm_bio_prison_cell* cell; struct thin_c* tc; int /*<<< orphan*/  prepare_actions; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef  int dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct dm_thin_new_mapping* FUNC1 (struct pool*) ; 
 scalar_t__ FUNC2 (struct pool*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct thin_c*,struct dm_thin_new_mapping*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_thin_new_mapping*) ; 
 int /*<<< orphan*/  FUNC5 (struct thin_c*,struct bio*,int,struct dm_thin_new_mapping*) ; 

__attribute__((used)) static void FUNC6(struct thin_c *tc, dm_block_t virt_block,
			  dm_block_t data_block, struct dm_bio_prison_cell *cell,
			  struct bio *bio)
{
	struct pool *pool = tc->pool;
	struct dm_thin_new_mapping *m = FUNC1(pool);

	FUNC0(&m->prepare_actions, 1); /* no need to quiesce */
	m->tc = tc;
	m->virt_begin = virt_block;
	m->virt_end = virt_block + 1u;
	m->data_block = data_block;
	m->cell = cell;

	/*
	 * If the whole block of data is being overwritten or we are not
	 * zeroing pre-existing data, we can issue the bio immediately.
	 * Otherwise we use kcopyd to zero the data first.
	 */
	if (pool->pf.zero_new_blocks) {
		if (FUNC2(pool, bio))
			FUNC5(tc, bio, data_block, m);
		else
			FUNC3(tc, m, data_block * pool->sectors_per_block,
				(data_block + 1) * pool->sectors_per_block);
	} else
		FUNC4(m);
}