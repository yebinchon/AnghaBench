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
struct cache {int /*<<< orphan*/  policy; TYPE_1__* ti; int /*<<< orphan*/  nr_dirty; int /*<<< orphan*/  dirty_bitset; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;
struct TYPE_2__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct cache *cache, dm_cblock_t cblock)
{
	if (FUNC4(FUNC2(cblock), cache->dirty_bitset)) {
		if (FUNC0(&cache->nr_dirty) == 0)
			FUNC1(cache->ti->table);
	}

	FUNC3(cache->policy, cblock);
}