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
struct smq_policy {int /*<<< orphan*/  bg_work; int /*<<< orphan*/  cache_alloc; int /*<<< orphan*/  table; } ;
struct policy_work {int op; int /*<<< orphan*/  oblock; int /*<<< orphan*/  cblock; } ;
struct entry {int /*<<< orphan*/  level; int /*<<< orphan*/  oblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_CACHE_LEVELS ; 
#define  POLICY_DEMOTE 130 
#define  POLICY_PROMOTE 129 
#define  POLICY_WRITEBACK 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct policy_work*) ; 
 int /*<<< orphan*/  FUNC1 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct entry* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct entry*) ; 
 int /*<<< orphan*/  FUNC6 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct smq_policy*,struct entry*) ; 

__attribute__((used)) static void FUNC8(struct smq_policy *mq,
				       struct policy_work *work,
				       bool success)
{
	struct entry *e = FUNC4(&mq->cache_alloc,
				    FUNC3(work->cblock));

	switch (work->op) {
	case POLICY_PROMOTE:
		// !h, !q, a
		FUNC1(mq, e);
		if (success) {
			e->oblock = work->oblock;
			e->level = NR_CACHE_LEVELS - 1;
			FUNC6(mq, e);
			// h, q, a
		} else {
			FUNC2(&mq->cache_alloc, e);
			// !h, !q, !a
		}
		break;

	case POLICY_DEMOTE:
		// h, !q, a
		if (success) {
			FUNC5(&mq->table, e);
			FUNC2(&mq->cache_alloc, e);
			// !h, !q, !a
		} else {
			FUNC1(mq, e);
			FUNC7(mq, e);
			// h, q, a
		}
		break;

	case POLICY_WRITEBACK:
		// h, !q, a
		FUNC1(mq, e);
		FUNC7(mq, e);
		// h, q, a
		break;
	}

	FUNC0(mq->bg_work, work);
}