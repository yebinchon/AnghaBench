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
struct dm_target {struct cache* private; } ;
struct cache {int /*<<< orphan*/  committer; int /*<<< orphan*/  origin_blocks; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int /*<<< orphan*/  FUNC0 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int FUNC6 (struct cache*,struct bio*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct dm_target *ti, struct bio *bio)
{
	struct cache *cache = ti->private;

	int r;
	bool commit_needed;
	dm_oblock_t block = FUNC4(cache, bio);

	FUNC5(bio);
	if (FUNC9(FUNC3(block) >= FUNC3(cache->origin_blocks))) {
		/*
		 * This can only occur if the io goes to a partial block at
		 * the end of the origin device.  We don't cache these.
		 * Just remap to the origin and carry on.
		 */
		FUNC7(cache, bio);
		FUNC0(cache, bio);
		return DM_MAPIO_REMAPPED;
	}

	if (FUNC2(bio)) {
		FUNC1(cache, bio);
		return DM_MAPIO_SUBMITTED;
	}

	r = FUNC6(cache, bio, block, &commit_needed);
	if (commit_needed)
		FUNC8(&cache->committer);

	return r;
}