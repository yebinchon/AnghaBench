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
struct pool {int /*<<< orphan*/  lock; int /*<<< orphan*/  prepared_discards_pt2; } ;
struct dm_thin_new_mapping {int /*<<< orphan*/  list; TYPE_1__* tc; } ;
struct TYPE_2__ {struct pool* pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct pool*) ; 

__attribute__((used)) static void FUNC4(struct dm_thin_new_mapping *m)
{
	unsigned long flags;
	struct pool *pool = m->tc->pool;

	FUNC1(&pool->lock, flags);
	FUNC0(&m->list, &pool->prepared_discards_pt2);
	FUNC2(&pool->lock, flags);
	FUNC3(pool);
}