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
struct cache {int /*<<< orphan*/  cache_size; scalar_t__ sized; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static bool FUNC5(struct cache *cache, dm_cblock_t new_size)
{
	if (FUNC2(new_size) > FUNC2(cache->cache_size)) {
		if (cache->sized) {
			FUNC0("%s: unable to extend cache due to missing cache table reload",
			      FUNC1(cache));
			return false;
		}
	}

	/*
	 * We can't drop a dirty block when shrinking the cache.
	 */
	while (FUNC2(new_size) < FUNC2(cache->cache_size)) {
		new_size = FUNC4(FUNC2(new_size) + 1);
		if (FUNC3(cache, new_size)) {
			FUNC0("%s: unable to shrink cache; cache block %llu is dirty",
			      FUNC1(cache),
			      (unsigned long long) FUNC2(new_size));
			return false;
		}
	}

	return true;
}