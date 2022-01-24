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
struct rxe_pool_entry {int /*<<< orphan*/  ref_cnt; struct rxe_pool* pool; } ;
struct rxe_pool {int flags; scalar_t__ state; scalar_t__ max_elem; TYPE_1__* rxe; int /*<<< orphan*/  num_elem; int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  ref_cnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  ib_dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int RXE_POOL_ATOMIC ; 
 scalar_t__ RXE_POOL_STATE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct rxe_pool*) ; 

int FUNC10(struct rxe_pool *pool, struct rxe_pool_entry *elem)
{
	unsigned long flags;

	FUNC6(!(pool->flags & RXE_POOL_ATOMIC));

	FUNC7(&pool->pool_lock, flags);
	if (pool->state != RXE_POOL_STATE_VALID) {
		FUNC8(&pool->pool_lock, flags);
		return -EINVAL;
	}
	FUNC4(&pool->ref_cnt);
	FUNC8(&pool->pool_lock, flags);

	if (!FUNC3(&pool->rxe->ib_dev))
		goto out_put_pool;

	if (FUNC1(&pool->num_elem) > pool->max_elem)
		goto out_cnt;

	elem->pool = pool;
	FUNC5(&elem->ref_cnt);

	return 0;

out_cnt:
	FUNC0(&pool->num_elem);
	FUNC2(&pool->rxe->ib_dev);
out_put_pool:
	FUNC9(pool);
	return -EINVAL;
}