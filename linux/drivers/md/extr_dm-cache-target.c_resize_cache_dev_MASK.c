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
struct cache {int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct cache *cache, dm_cblock_t new_size)
{
	int r;

	r = FUNC2(cache->cmd, new_size);
	if (r) {
		FUNC0("%s: could not resize cache metadata", FUNC1(cache));
		FUNC3(cache, "dm_cache_resize", r);
		return r;
	}

	FUNC4(cache, new_size);

	return 0;
}