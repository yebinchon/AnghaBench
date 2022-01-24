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
struct smq_policy {int /*<<< orphan*/  cache_alloc; int /*<<< orphan*/  bg_work; int /*<<< orphan*/  migrations_allowed; } ;
struct policy_work {int /*<<< orphan*/  cblock; int /*<<< orphan*/  oblock; int /*<<< orphan*/  op; } ;
struct entry {int pending_work; } ;
typedef  int /*<<< orphan*/  dm_oblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  POLICY_PROMOTE ; 
 struct entry* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct policy_work*,struct policy_work**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct smq_policy*) ; 
 int /*<<< orphan*/  FUNC7 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC8 (struct smq_policy*) ; 

__attribute__((used)) static void FUNC9(struct smq_policy *mq, dm_oblock_t oblock,
			    struct policy_work **workp)
{
	int r;
	struct entry *e;
	struct policy_work work;

	if (!mq->migrations_allowed)
		return;

	if (FUNC2(&mq->cache_alloc)) {
		/*
		 * We always claim to be 'idle' to ensure some demotions happen
		 * with continuous loads.
		 */
		if (!FUNC6(mq))
			FUNC8(mq);
		return;
	}

	if (FUNC3(mq->bg_work, oblock))
		return;

	/*
	 * We allocate the entry now to reserve the cblock.  If the
	 * background work is aborted we must remember to free it.
	 */
	e = FUNC1(&mq->cache_alloc);
	FUNC0(!e);
	e->pending_work = true;
	work.op = POLICY_PROMOTE;
	work.oblock = oblock;
	work.cblock = FUNC7(mq, e);
	r = FUNC4(mq->bg_work, &work, workp);
	if (r)
		FUNC5(&mq->cache_alloc, e);
}