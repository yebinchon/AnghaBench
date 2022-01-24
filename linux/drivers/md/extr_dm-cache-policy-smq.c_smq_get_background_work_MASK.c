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
struct smq_policy {int /*<<< orphan*/  lock; int /*<<< orphan*/  bg_work; } ;
struct policy_work {int dummy; } ;
struct dm_cache_policy {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 int FUNC0 (int /*<<< orphan*/ ,struct policy_work**) ; 
 int /*<<< orphan*/  FUNC1 (struct smq_policy*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct smq_policy*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct smq_policy* FUNC5 (struct dm_cache_policy*) ; 

__attribute__((used)) static int FUNC6(struct dm_cache_policy *p, bool idle,
				   struct policy_work **result)
{
	int r;
	unsigned long flags;
	struct smq_policy *mq = FUNC5(p);

	FUNC3(&mq->lock, flags);
	r = FUNC0(mq->bg_work, result);
	if (r == -ENODATA) {
		if (!FUNC1(mq, idle)) {
			FUNC2(mq, idle);
			r = FUNC0(mq->bg_work, result);
		}
	}
	FUNC4(&mq->lock, flags);

	return r;
}