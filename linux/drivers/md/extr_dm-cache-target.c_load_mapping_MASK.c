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
typedef  int /*<<< orphan*/  uint32_t ;
struct cache {int /*<<< orphan*/  policy; int /*<<< orphan*/  dirty_bitset; int /*<<< orphan*/  nr_dirty; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void *context, dm_oblock_t oblock, dm_cblock_t cblock,
			bool dirty, uint32_t hint, bool hint_valid)
{
	int r;
	struct cache *cache = context;

	if (dirty) {
		FUNC4(FUNC2(cblock), cache->dirty_bitset);
		FUNC0(&cache->nr_dirty);
	} else
		FUNC1(FUNC2(cblock), cache->dirty_bitset);

	r = FUNC3(cache->policy, oblock, cblock, dirty, hint, hint_valid);
	if (r)
		return r;

	return 0;
}