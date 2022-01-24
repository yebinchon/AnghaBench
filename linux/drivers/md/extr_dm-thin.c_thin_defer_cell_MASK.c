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
struct thin_c {int /*<<< orphan*/  lock; int /*<<< orphan*/  deferred_cells; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  throttle; } ;
struct dm_bio_prison_cell {int /*<<< orphan*/  user_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct pool*) ; 

__attribute__((used)) static void FUNC6(struct thin_c *tc, struct dm_bio_prison_cell *cell)
{
	unsigned long flags;
	struct pool *pool = tc->pool;

	FUNC3(&pool->throttle);
	FUNC1(&tc->lock, flags);
	FUNC0(&cell->user_list, &tc->deferred_cells);
	FUNC2(&tc->lock, flags);
	FUNC4(&pool->throttle);

	FUNC5(pool);
}