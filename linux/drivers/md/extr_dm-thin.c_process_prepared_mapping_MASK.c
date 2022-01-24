#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thin_c {struct pool* pool; int /*<<< orphan*/  td; } ;
struct pool {int /*<<< orphan*/  mapping_pool; } ;
struct dm_thin_new_mapping {int /*<<< orphan*/  list; int /*<<< orphan*/  data_block; TYPE_1__* cell; int /*<<< orphan*/  virt_begin; scalar_t__ status; struct bio* bio; struct thin_c* tc; } ;
struct bio {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  holder; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pool*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct thin_c*,struct bio*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thin_c*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_thin_new_mapping*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct pool*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct thin_c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct dm_thin_new_mapping *m)
{
	struct thin_c *tc = m->tc;
	struct pool *pool = tc->pool;
	struct bio *bio = m->bio;
	int r;

	if (m->status) {
		FUNC0(pool, m->cell);
		goto out;
	}

	/*
	 * Commit the prepared block into the mapping btree.
	 * Any I/O for this block arriving after this point will get
	 * remapped to it directly.
	 */
	r = FUNC2(tc->td, m->virt_begin, m->data_block);
	if (r) {
		FUNC7(pool, "dm_thin_insert_block", r);
		FUNC0(pool, m->cell);
		goto out;
	}

	/*
	 * Release any bios held while the block was being provisioned.
	 * If we are processing a write bio that completely covers the block,
	 * we already processed it so can ignore it now when processing
	 * the bios in the cell.
	 */
	if (bio) {
		FUNC4(tc, m->cell, m->data_block);
		FUNC1(tc, bio);
	} else {
		FUNC3(tc->pool, m->cell->holder);
		FUNC8(tc, m->cell->holder, m->data_block);
		FUNC4(tc, m->cell, m->data_block);
	}

out:
	FUNC5(&m->list);
	FUNC6(m, &pool->mapping_pool);
}