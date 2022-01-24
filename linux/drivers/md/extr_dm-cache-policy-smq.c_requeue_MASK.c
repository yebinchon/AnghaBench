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
struct smq_policy {int current_writeback_sentinels; int /*<<< orphan*/  writeback_sentinel_alloc; int /*<<< orphan*/  dirty; int /*<<< orphan*/  clean; int /*<<< orphan*/  cache_hit_bits; } ;
struct entry {int /*<<< orphan*/  level; int /*<<< orphan*/  dirty; scalar_t__ pending_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct smq_policy*,struct entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct entry*,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct smq_policy *mq, struct entry *e)
{
	/*
	 * Pending work has temporarily been taken out of the queues.
	 */
	if (e->pending_work)
		return;

	if (!FUNC4(FUNC0(FUNC2(mq, e)), mq->cache_hit_bits)) {
		if (!e->dirty) {
			FUNC3(&mq->clean, e, 1u, NULL, NULL);
			return;
		}

		FUNC3(&mq->dirty, e, 1u,
			  FUNC1(&mq->writeback_sentinel_alloc, e->level, !mq->current_writeback_sentinels),
			  FUNC1(&mq->writeback_sentinel_alloc, e->level, mq->current_writeback_sentinels));
	}
}