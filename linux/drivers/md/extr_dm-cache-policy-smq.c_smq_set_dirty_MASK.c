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
struct smq_policy {int /*<<< orphan*/  lock; } ;
struct dm_cache_policy {int dummy; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smq_policy*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct smq_policy* FUNC3 (struct dm_cache_policy*) ; 

__attribute__((used)) static void FUNC4(struct dm_cache_policy *p, dm_cblock_t cblock)
{
	unsigned long flags;
	struct smq_policy *mq = FUNC3(p);

	FUNC1(&mq->lock, flags);
	FUNC0(mq, cblock, true);
	FUNC2(&mq->lock, flags);
}