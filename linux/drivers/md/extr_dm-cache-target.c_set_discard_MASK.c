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
struct TYPE_2__ {int /*<<< orphan*/  discard_count; } ;
struct cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  discard_bitset; TYPE_1__ stats; int /*<<< orphan*/  discard_nr_blocks; } ;
typedef  int /*<<< orphan*/  dm_dblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct cache *cache, dm_dblock_t b)
{
	unsigned long flags;

	FUNC0(FUNC2(b) >= FUNC2(cache->discard_nr_blocks));
	FUNC1(&cache->stats.discard_count);

	FUNC4(&cache->lock, flags);
	FUNC3(FUNC2(b), cache->discard_bitset);
	FUNC5(&cache->lock, flags);
}