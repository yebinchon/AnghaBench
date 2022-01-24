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
struct per_bio_data {struct dm_bio_prison_cell_v2* cell; } ;
struct dm_cell_key_v2 {int dummy; } ;
struct dm_bio_prison_cell_v2 {int dummy; } ;
struct cache {int /*<<< orphan*/  prison; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;

/* Variables and functions */
 struct dm_bio_prison_cell_v2* FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_cell_key_v2*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct dm_cell_key_v2*,int /*<<< orphan*/ ,struct bio*,struct dm_bio_prison_cell_v2*,struct dm_bio_prison_cell_v2**) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,struct dm_bio_prison_cell_v2*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 struct per_bio_data* FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static bool FUNC8(struct cache *cache, dm_oblock_t oblock, struct bio *bio)
{
	bool r;
	struct per_bio_data *pb;
	struct dm_cell_key_v2 key;
	dm_oblock_t end = FUNC7(FUNC4(oblock) + 1ULL);
	struct dm_bio_prison_cell_v2 *cell_prealloc, *cell;

	cell_prealloc = FUNC0(cache); /* FIXME: allow wait if calling from worker */

	FUNC1(oblock, end, &key);
	r = FUNC2(cache->prison, &key, FUNC6(bio), bio, cell_prealloc, &cell);
	if (!r) {
		/*
		 * Failed to get the lock.
		 */
		FUNC3(cache, cell_prealloc);
		return r;
	}

	if (cell != cell_prealloc)
		FUNC3(cache, cell_prealloc);

	pb = FUNC5(bio);
	pb->cell = cell;

	return r;
}