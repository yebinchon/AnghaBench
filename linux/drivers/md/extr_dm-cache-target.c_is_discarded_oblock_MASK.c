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
struct cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  discard_bitset; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(struct cache *cache, dm_oblock_t b)
{
	int r;
	unsigned long flags;

	FUNC2(&cache->lock, flags);
	r = FUNC4(FUNC0(FUNC1(cache, b)),
		     cache->discard_bitset);
	FUNC3(&cache->lock, flags);

	return r;
}