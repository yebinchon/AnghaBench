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
struct smq_policy {int /*<<< orphan*/  lock; int /*<<< orphan*/  tick; } ;
struct dm_cache_policy {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smq_policy*) ; 
 int /*<<< orphan*/  FUNC1 (struct smq_policy*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct smq_policy* FUNC4 (struct dm_cache_policy*) ; 
 int /*<<< orphan*/  FUNC5 (struct smq_policy*) ; 

__attribute__((used)) static void FUNC6(struct dm_cache_policy *p, bool can_block)
{
	struct smq_policy *mq = FUNC4(p);
	unsigned long flags;

	FUNC2(&mq->lock, flags);
	mq->tick++;
	FUNC5(mq);
	FUNC1(mq);
	FUNC0(mq);
	FUNC3(&mq->lock, flags);
}