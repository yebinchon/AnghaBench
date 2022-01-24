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
struct work_struct {int dummy; } ;
struct dm_cache_migration {int /*<<< orphan*/ * overwrite_bio; int /*<<< orphan*/  invalidate_oblock; int /*<<< orphan*/  k; int /*<<< orphan*/  invalidate_cblock; struct cache* cache; } ;
struct cache {int /*<<< orphan*/  committer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_cache_migration*,int) ; 
 int /*<<< orphan*/  invalidate_completed ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dm_cache_migration* FUNC6 (struct work_struct*) ; 

__attribute__((used)) static void FUNC7(struct work_struct *ws)
{
	int r;
	struct dm_cache_migration *mg = FUNC6(ws);
	struct cache *cache = mg->cache;

	r = FUNC2(cache, mg->invalidate_cblock);
	if (r) {
		FUNC3(mg, false);
		return;
	}

	FUNC1(&mg->k, invalidate_completed);
	FUNC0(&cache->committer, &mg->k);
	FUNC4(cache, mg->overwrite_bio, mg->invalidate_oblock);
	mg->overwrite_bio = NULL;
	FUNC5(&cache->committer);
}