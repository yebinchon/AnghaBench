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
typedef  int /*<<< orphan*/  u8 ;
struct rxe_pool_entry {struct rxe_pool* pool; } ;
struct rxe_pool {int key_offset; int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  key_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rxe_pool*,struct rxe_pool_entry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(void *arg, void *key)
{
	struct rxe_pool_entry *elem = arg;
	struct rxe_pool *pool = elem->pool;
	unsigned long flags;

	FUNC2(&pool->pool_lock, flags);
	FUNC1((u8 *)elem + pool->key_offset, key, pool->key_size);
	FUNC0(pool, elem);
	FUNC3(&pool->pool_lock, flags);
}