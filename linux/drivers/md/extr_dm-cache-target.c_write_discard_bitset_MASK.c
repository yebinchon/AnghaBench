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
struct cache {int /*<<< orphan*/  cmd; int /*<<< orphan*/  discard_nr_blocks; int /*<<< orphan*/  discard_block_size; } ;

/* Variables and functions */
 scalar_t__ CM_READ_ONLY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct cache*) ; 
 int /*<<< orphan*/  FUNC6 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cache*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 

__attribute__((used)) static int FUNC9(struct cache *cache)
{
	unsigned i, r;

	if (FUNC5(cache) >= CM_READ_ONLY)
		return -EINVAL;

	r = FUNC2(cache->cmd, cache->discard_block_size,
					   cache->discard_nr_blocks);
	if (r) {
		FUNC0("%s: could not resize on-disk discard bitset", FUNC1(cache));
		FUNC7(cache, "dm_cache_discard_bitset_resize", r);
		return r;
	}

	for (i = 0; i < FUNC4(cache->discard_nr_blocks); i++) {
		r = FUNC3(cache->cmd, FUNC8(i),
					 FUNC6(cache, FUNC8(i)));
		if (r) {
			FUNC7(cache, "dm_cache_set_discard", r);
			return r;
		}
	}

	return 0;
}