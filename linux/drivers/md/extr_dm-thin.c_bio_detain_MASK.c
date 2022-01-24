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
struct pool {int /*<<< orphan*/  prison; } ;
struct dm_cell_key {int dummy; } ;
struct dm_bio_prison_cell {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC0 (int /*<<< orphan*/ ,struct dm_cell_key*,struct bio*,struct dm_bio_prison_cell*,struct dm_bio_prison_cell**) ; 
 struct dm_bio_prison_cell* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dm_bio_prison_cell*) ; 

__attribute__((used)) static int FUNC3(struct pool *pool, struct dm_cell_key *key, struct bio *bio,
		      struct dm_bio_prison_cell **cell_result)
{
	int r;
	struct dm_bio_prison_cell *cell_prealloc;

	/*
	 * Allocate a cell from the prison's mempool.
	 * This might block but it can't fail.
	 */
	cell_prealloc = FUNC1(pool->prison, GFP_NOIO);

	r = FUNC0(pool->prison, key, bio, cell_prealloc, cell_result);
	if (r)
		/*
		 * We reused an old cell; we can get rid of
		 * the new one.
		 */
		FUNC2(pool->prison, cell_prealloc);

	return r;
}