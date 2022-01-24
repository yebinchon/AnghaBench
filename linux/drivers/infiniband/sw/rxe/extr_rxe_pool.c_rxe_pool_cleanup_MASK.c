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
struct rxe_pool {int /*<<< orphan*/  pool_lock; int /*<<< orphan*/  num_elem; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  RXE_POOL_STATE_INVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rxe_pool*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rxe_pool*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(struct rxe_pool *pool)
{
	unsigned long flags;

	FUNC4(&pool->pool_lock, flags);
	pool->state = RXE_POOL_STATE_INVALID;
	if (FUNC0(&pool->num_elem) > 0)
		FUNC2("%s pool destroyed with unfree'd elem\n",
			FUNC1(pool));
	FUNC5(&pool->pool_lock, flags);

	FUNC3(pool);
}