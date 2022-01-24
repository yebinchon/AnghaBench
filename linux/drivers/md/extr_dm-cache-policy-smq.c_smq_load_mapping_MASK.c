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
struct smq_policy {int /*<<< orphan*/  cache_alloc; } ;
struct entry {int dirty; int pending_work; int /*<<< orphan*/  level; int /*<<< orphan*/  oblock; } ;
struct dm_cache_policy {int dummy; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 scalar_t__ NR_CACHE_LEVELS ; 
 struct entry* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct smq_policy* FUNC5 (struct dm_cache_policy*) ; 

__attribute__((used)) static int FUNC6(struct dm_cache_policy *p,
			    dm_oblock_t oblock, dm_cblock_t cblock,
			    bool dirty, uint32_t hint, bool hint_valid)
{
	struct smq_policy *mq = FUNC5(p);
	struct entry *e;

	e = FUNC0(&mq->cache_alloc, FUNC1(cblock));
	e->oblock = oblock;
	e->dirty = dirty;
	e->level = hint_valid ? FUNC2(hint, NR_CACHE_LEVELS - 1) : FUNC4(cblock);
	e->pending_work = false;

	/*
	 * When we load mappings we push ahead of both sentinels in order to
	 * allow demotions and cleaning to occur immediately.
	 */
	FUNC3(mq, e);

	return 0;
}