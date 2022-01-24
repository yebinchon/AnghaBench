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
struct cache {int /*<<< orphan*/  policy; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 scalar_t__ CM_READ_ONLY ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*,char*,int) ; 

__attribute__((used)) static int FUNC3(struct cache *cache)
{
	int r;

	if (FUNC1(cache) >= CM_READ_ONLY)
		return -EINVAL;

	r = FUNC0(cache->cmd, cache->policy);
	if (r) {
		FUNC2(cache, "dm_cache_write_hints", r);
		return r;
	}

	return 0;
}