#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dm_cache_statistics {int /*<<< orphan*/  write_misses; int /*<<< orphan*/  write_hits; int /*<<< orphan*/  read_misses; int /*<<< orphan*/  read_hits; } ;
struct TYPE_2__ {int /*<<< orphan*/  write_miss; int /*<<< orphan*/  write_hit; int /*<<< orphan*/  read_miss; int /*<<< orphan*/  read_hit; } ;
struct cache {TYPE_1__ stats; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dm_cache_statistics*) ; 

__attribute__((used)) static void FUNC2(struct cache *cache)
{
	struct dm_cache_statistics stats;

	FUNC1(cache->cmd, &stats);
	FUNC0(&cache->stats.read_hit, stats.read_hits);
	FUNC0(&cache->stats.read_miss, stats.read_misses);
	FUNC0(&cache->stats.write_hit, stats.write_hits);
	FUNC0(&cache->stats.write_miss, stats.write_misses);
}