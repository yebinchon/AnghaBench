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
struct bio_list {int dummy; } ;
struct cache {struct bio_list deferred_bios; } ;
struct bio {int /*<<< orphan*/  bi_status; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_DM_REQUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*,struct bio_list*) ; 
 struct bio* FUNC3 (struct bio_list*) ; 

__attribute__((used)) static void FUNC4(struct cache *cache)
{
	struct bio *bio;
	struct bio_list bios;

	FUNC1(&bios);
	FUNC2(&bios, &cache->deferred_bios);
	FUNC1(&cache->deferred_bios);

	while ((bio = FUNC3(&bios))) {
		bio->bi_status = BLK_STS_DM_REQUEUE;
		FUNC0(bio);
	}
}