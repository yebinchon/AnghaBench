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
struct dm_cache_migration {scalar_t__ overwrite_bio; int /*<<< orphan*/  cell; struct cache* cache; } ;
struct cache {int /*<<< orphan*/  prison; } ;
struct bio_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,struct bio_list*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_cache_migration*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct dm_cache_migration *mg, bool success)
{
	struct bio_list bios;
	struct cache *cache = mg->cache;

	FUNC2(&bios);
	if (FUNC4(cache->prison, mg->cell, &bios))
		FUNC6(cache, mg->cell);

	if (!success && mg->overwrite_bio)
		FUNC1(mg->overwrite_bio);

	FUNC5(mg);
	FUNC3(cache, &bios);

	FUNC0(cache);
}