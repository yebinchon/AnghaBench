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
struct cache {int /*<<< orphan*/  bs; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,struct bio*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,struct bio*) ; 
 struct bio* FUNC3 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 

__attribute__((used)) static void FUNC6(struct cache *cache, struct bio *bio,
				      dm_oblock_t oblock, dm_cblock_t cblock)
{
	struct bio *origin_bio = FUNC3(bio, GFP_NOIO, &cache->bs);

	FUNC0(!origin_bio);

	FUNC2(origin_bio, bio);
	/*
	 * Passing false to __remap_to_origin_clear_discard() skips
	 * all code that might use per_bio_data (since clone doesn't have it)
	 */
	FUNC1(cache, origin_bio, oblock, false);
	FUNC5(origin_bio);

	FUNC4(cache, bio, cblock);
}