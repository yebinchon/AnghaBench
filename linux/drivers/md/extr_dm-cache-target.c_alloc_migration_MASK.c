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
struct cache {int /*<<< orphan*/  nr_allocated_migrations; int /*<<< orphan*/  migration_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct dm_cache_migration* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_cache_migration*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct dm_cache_migration *FUNC3(struct cache *cache)
{
	struct dm_cache_migration *mg;

	mg = FUNC1(&cache->migration_pool, GFP_NOIO);

	FUNC2(mg, 0, sizeof(*mg));

	mg->cache = cache;
	FUNC0(&cache->nr_allocated_migrations);

	return mg;
}