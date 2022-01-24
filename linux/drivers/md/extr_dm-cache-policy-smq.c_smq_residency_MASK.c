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
struct TYPE_2__ {int /*<<< orphan*/  nr_allocated; } ;
struct smq_policy {int /*<<< orphan*/  lock; TYPE_1__ cache_alloc; } ;
struct dm_cache_policy {int dummy; } ;
typedef  int /*<<< orphan*/  dm_cblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct smq_policy* FUNC3 (struct dm_cache_policy*) ; 

__attribute__((used)) static dm_cblock_t FUNC4(struct dm_cache_policy *p)
{
	dm_cblock_t r;
	unsigned long flags;
	struct smq_policy *mq = FUNC3(p);

	FUNC0(&mq->lock, flags);
	r = FUNC2(mq->cache_alloc.nr_allocated);
	FUNC1(&mq->lock, flags);

	return r;
}