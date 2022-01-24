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
struct dm_cache_migration {struct cache* cache; } ;
struct cache {int /*<<< orphan*/  migration_pool; int /*<<< orphan*/  migration_wait; int /*<<< orphan*/  nr_allocated_migrations; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_migration*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dm_cache_migration *mg)
{
	struct cache *cache = mg->cache;

	if (FUNC0(&cache->nr_allocated_migrations))
		FUNC2(&cache->migration_wait);

	FUNC1(mg, &cache->migration_pool);
}