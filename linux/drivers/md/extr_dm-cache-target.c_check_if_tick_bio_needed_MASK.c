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
struct per_bio_data {int tick; } ;
struct cache {int need_tick_bio; int /*<<< orphan*/  lock; } ;
struct bio {int /*<<< orphan*/  bi_opf; } ;

/* Variables and functions */
 scalar_t__ REQ_OP_DISCARD ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 struct per_bio_data* FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct cache *cache, struct bio *bio)
{
	unsigned long flags;
	struct per_bio_data *pb;

	FUNC3(&cache->lock, flags);
	if (cache->need_tick_bio && !FUNC2(bio->bi_opf) &&
	    FUNC0(bio) != REQ_OP_DISCARD) {
		pb = FUNC1(bio);
		pb->tick = true;
		cache->need_tick_bio = false;
	}
	FUNC4(&cache->lock, flags);
}