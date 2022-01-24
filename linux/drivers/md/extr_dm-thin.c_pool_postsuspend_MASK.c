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
struct pool_c {struct pool* pool; } ;
struct pool {int /*<<< orphan*/  wq; int /*<<< orphan*/  no_space_timeout; int /*<<< orphan*/  waker; } ;
struct dm_target {struct pool_c* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pool*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dm_target *ti)
{
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;

	FUNC0(&pool->waker);
	FUNC0(&pool->no_space_timeout);
	FUNC2(pool->wq);
	(void) FUNC1(pool);
}