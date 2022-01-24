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
struct dm_cache_policy {int dummy; } ;
struct cache_args {int /*<<< orphan*/  policy_name; } ;
struct cache {struct dm_cache_policy* policy; int /*<<< orphan*/  sectors_per_block; int /*<<< orphan*/  origin_sectors; int /*<<< orphan*/  cache_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct dm_cache_policy*) ; 
 int FUNC2 (struct dm_cache_policy*) ; 
 struct dm_cache_policy* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cache *cache, struct cache_args *ca,
			       char **error)
{
	struct dm_cache_policy *p = FUNC3(ca->policy_name,
							   cache->cache_size,
							   cache->origin_sectors,
							   cache->sectors_per_block);
	if (FUNC1(p)) {
		*error = "Error creating cache's policy";
		return FUNC2(p);
	}
	cache->policy = p;
	FUNC0(!cache->policy);

	return 0;
}