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
struct thin_c {int /*<<< orphan*/  td; struct pool* pool; } ;
struct pool {int dummy; } ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pool*,struct dm_cell_key*,struct bio*,struct dm_bio_prison_cell**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_cell_key*) ; 
 int /*<<< orphan*/  FUNC2 (struct thin_c*,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct thin_c*,struct dm_bio_prison_cell*) ; 

__attribute__((used)) static void FUNC4(struct thin_c *tc, struct bio *bio)
{
	struct pool *pool = tc->pool;
	dm_block_t block = FUNC2(tc, bio);
	struct dm_bio_prison_cell *cell;
	struct dm_cell_key key;

	/*
	 * If cell is already occupied, then the block is already
	 * being provisioned so we have nothing further to do here.
	 */
	FUNC1(tc->td, block, &key);
	if (FUNC0(pool, &key, bio, &cell))
		return;

	FUNC3(tc, cell);
}