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
struct rxe_pool_entry {int /*<<< orphan*/  node; scalar_t__ index; struct rxe_pool* pool; } ;
struct rxe_pool {int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  tree; int /*<<< orphan*/  table; scalar_t__ min_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(void *arg)
{
	struct rxe_pool_entry *elem = arg;
	struct rxe_pool *pool = elem->pool;
	unsigned long flags;

	FUNC2(&pool->pool_lock, flags);
	FUNC0(elem->index - pool->min_index, pool->table);
	FUNC1(&elem->node, &pool->tree);
	FUNC3(&pool->pool_lock, flags);
}