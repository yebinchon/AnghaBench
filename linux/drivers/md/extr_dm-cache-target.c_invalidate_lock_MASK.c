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
struct dm_cell_key_v2 {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ws; } ;
struct dm_cache_migration {TYPE_1__ k; struct dm_bio_prison_cell_v2* cell; int /*<<< orphan*/  invalidate_oblock; struct cache* cache; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;
struct cache {int /*<<< orphan*/  wq; int /*<<< orphan*/  prison; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_WRITE_LOCK_LEVEL ; 
 struct dm_bio_prison_cell_v2* FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_cell_key_v2*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct dm_cell_key_v2*,int /*<<< orphan*/ ,struct dm_bio_prison_cell_v2*,struct dm_bio_prison_cell_v2**) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,struct dm_bio_prison_cell_v2*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_cache_migration*,int) ; 
 int /*<<< orphan*/  invalidate_remove ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_cache_migration*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dm_cache_migration *mg)
{
	int r;
	struct dm_cell_key_v2 key;
	struct cache *cache = mg->cache;
	struct dm_bio_prison_cell_v2 *prealloc;

	prealloc = FUNC0(cache);

	FUNC1(mg->invalidate_oblock, FUNC6(mg->invalidate_oblock), &key);
	r = FUNC2(cache->prison, &key,
			    READ_WRITE_LOCK_LEVEL, prealloc, &mg->cell);
	if (r < 0) {
		FUNC3(cache, prealloc);
		FUNC5(mg, false);
		return r;
	}

	if (mg->cell != prealloc)
		FUNC3(cache, prealloc);

	if (r)
		FUNC8(mg, invalidate_remove);

	else {
		/*
		 * We can't call invalidate_remove() directly here because we
		 * might still be in request context.
		 */
		FUNC4(&mg->k, invalidate_remove);
		FUNC7(cache->wq, &mg->k.ws);
	}

	return 0;
}