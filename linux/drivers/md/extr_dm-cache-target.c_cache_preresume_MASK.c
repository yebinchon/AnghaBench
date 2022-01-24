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
struct dm_target {struct cache* private; } ;
struct discard_load_info {int dummy; } ;
struct cache {int sized; scalar_t__ cache_size; int loaded_mappings; int loaded_discards; int /*<<< orphan*/  cmd; int /*<<< orphan*/  discard_nr_blocks; int /*<<< orphan*/  discard_bitset; int /*<<< orphan*/  policy; } ;
typedef  scalar_t__ dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cache*,struct discard_load_info*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct discard_load_info*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cache*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct cache*) ; 
 int /*<<< orphan*/  load_discard ; 
 int /*<<< orphan*/  load_mapping ; 
 int /*<<< orphan*/  FUNC9 (struct cache*,char*,int) ; 
 int FUNC10 (struct cache*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct discard_load_info*) ; 

__attribute__((used)) static int FUNC12(struct dm_target *ti)
{
	int r = 0;
	struct cache *cache = ti->private;
	dm_cblock_t csize = FUNC8(cache);

	/*
	 * Check to see if the cache has resized.
	 */
	if (!cache->sized) {
		r = FUNC10(cache, csize);
		if (r)
			return r;

		cache->sized = true;

	} else if (csize != cache->cache_size) {
		if (!FUNC2(cache, csize))
			return -EINVAL;

		r = FUNC10(cache, csize);
		if (r)
			return r;
	}

	if (!cache->loaded_mappings) {
		r = FUNC6(cache->cmd, cache->policy,
					   load_mapping, cache);
		if (r) {
			FUNC0("%s: could not load cache mappings", FUNC1(cache));
			FUNC9(cache, "dm_cache_load_mappings", r);
			return r;
		}

		cache->loaded_mappings = true;
	}

	if (!cache->loaded_discards) {
		struct discard_load_info li;

		/*
		 * The discard bitset could have been resized, or the
		 * discard block size changed.  To be safe we start by
		 * setting every dblock to not discarded.
		 */
		FUNC3(cache->discard_bitset, FUNC7(cache->discard_nr_blocks));

		FUNC4(cache, &li);
		r = FUNC5(cache->cmd, load_discard, &li);
		if (r) {
			FUNC0("%s: could not load origin discards", FUNC1(cache));
			FUNC9(cache, "dm_cache_load_discards", r);
			return r;
		}
		FUNC11(&li);

		cache->loaded_discards = true;
	}

	return r;
}