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
struct per_bio_data {scalar_t__ tick; } ;
struct dm_target {struct cache* private; } ;
struct cache {int need_tick_bio; int /*<<< orphan*/  lock; int /*<<< orphan*/  policy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  blk_status_t ;

/* Variables and functions */
 int DM_ENDIO_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct cache*,struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,struct bio*) ; 
 struct per_bio_data* FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct dm_target *ti, struct bio *bio, blk_status_t *error)
{
	struct cache *cache = ti->private;
	unsigned long flags;
	struct per_bio_data *pb = FUNC2(bio);

	if (pb->tick) {
		FUNC3(cache->policy, false);

		FUNC4(&cache->lock, flags);
		cache->need_tick_bio = true;
		FUNC5(&cache->lock, flags);
	}

	FUNC1(cache, bio);
	FUNC0(cache, bio);

	return DM_ENDIO_DONE;
}