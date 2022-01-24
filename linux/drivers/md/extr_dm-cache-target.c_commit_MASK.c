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
struct TYPE_2__ {int /*<<< orphan*/  commit_count; } ;
struct cache {int /*<<< orphan*/  cmd; TYPE_1__ stats; } ;

/* Variables and functions */
 scalar_t__ CM_READ_ONLY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct cache*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct cache *cache, bool clean_shutdown)
{
	int r;

	if (FUNC2(cache) >= CM_READ_ONLY)
		return -EINVAL;

	FUNC0(&cache->stats.commit_count);
	r = FUNC1(cache->cmd, clean_shutdown);
	if (r)
		FUNC3(cache, "dm_cache_commit", r);

	return r;
}