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
struct rxe_pool_entry {int /*<<< orphan*/  index; struct rxe_pool* pool; } ;
struct rxe_pool {int /*<<< orphan*/  pool_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxe_pool*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_pool*,struct rxe_pool_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(void *arg)
{
	struct rxe_pool_entry *elem = arg;
	struct rxe_pool *pool = elem->pool;
	unsigned long flags;

	FUNC2(&pool->pool_lock, flags);
	elem->index = FUNC0(pool);
	FUNC1(pool, elem);
	FUNC3(&pool->pool_lock, flags);
}