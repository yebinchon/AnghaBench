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
struct cache {int /*<<< orphan*/  cmd; int /*<<< orphan*/  policy; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int ENODATA ; 
 int /*<<< orphan*/  FUNC2 (struct cache*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cache *cache, dm_cblock_t cblock)
{
	int r = FUNC5(cache->policy, cblock);
	if (!r) {
		r = FUNC3(cache->cmd, cblock);
		if (r) {
			FUNC1("%s: invalidation failed; couldn't update on disk metadata",
				    FUNC2(cache));
			FUNC4(cache, "dm_cache_remove_mapping", r);
		}

	} else if (r == -ENODATA) {
		/*
		 * Harmless, already unmapped.
		 */
		r = 0;

	} else
		FUNC0("%s: policy_invalidate_mapping failed", FUNC2(cache));

	return r;
}