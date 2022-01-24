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
struct smq_policy {int /*<<< orphan*/  cache_alloc; } ;
struct entry {int dirty; scalar_t__ pending_work; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct entry* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smq_policy*,struct entry*) ; 

__attribute__((used)) static void FUNC4(struct smq_policy *mq, dm_cblock_t cblock, bool set)
{
	struct entry *e = FUNC2(&mq->cache_alloc, FUNC1(cblock));

	if (e->pending_work)
		e->dirty = set;
	else {
		FUNC0(mq, e);
		e->dirty = set;
		FUNC3(mq, e);
	}
}