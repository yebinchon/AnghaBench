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
struct dm_cell_key_v2 {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  ws; } ;
struct dm_cache_migration {TYPE_2__ k; struct dm_bio_prison_cell_v2* cell; scalar_t__ overwrite_bio; TYPE_1__* op; struct cache* cache; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;
struct cache {int /*<<< orphan*/  prison; } ;
struct TYPE_3__ {int /*<<< orphan*/  oblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_WRITE_LOCK_LEVEL ; 
 int /*<<< orphan*/  WRITE_LOCK_LEVEL ; 
 struct dm_bio_prison_cell_v2* FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_cell_key_v2*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct dm_cell_key_v2*,int /*<<< orphan*/ ,struct dm_bio_prison_cell_v2*,struct dm_bio_prison_cell_v2**) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,struct dm_bio_prison_cell_v2*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_cache_migration*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_cache_migration*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 

__attribute__((used)) static int FUNC8(struct dm_cache_migration *mg)
{
	int r;
	struct dm_cell_key_v2 key;
	struct cache *cache = mg->cache;
	struct dm_bio_prison_cell_v2 *prealloc;

	prealloc = FUNC0(cache);

	/*
	 * Prevent writes to the block, but allow reads to continue.
	 * Unless we're using an overwrite bio, in which case we lock
	 * everything.
	 */
	FUNC1(mg->op->oblock, FUNC6(mg->op->oblock), &key);
	r = FUNC2(cache->prison, &key,
			    mg->overwrite_bio ?  READ_WRITE_LOCK_LEVEL : WRITE_LOCK_LEVEL,
			    prealloc, &mg->cell);
	if (r < 0) {
		FUNC3(cache, prealloc);
		FUNC4(mg, false);
		return r;
	}

	if (mg->cell != prealloc)
		FUNC3(cache, prealloc);

	if (r == 0)
		FUNC5(&mg->k.ws);
	else
		FUNC7(mg, mg_copy);

	return 0;
}