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
struct pool_c {TYPE_1__* data_dev; struct pool* pool; } ;
struct pool {int /*<<< orphan*/  lock; } ;
struct dm_target {struct pool_c* private; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct dm_target *ti, struct bio *bio)
{
	int r;
	struct pool_c *pt = ti->private;
	struct pool *pool = pt->pool;
	unsigned long flags;

	/*
	 * As this is a singleton target, ti->begin is always zero.
	 */
	FUNC1(&pool->lock, flags);
	FUNC0(bio, pt->data_dev->bdev);
	r = DM_MAPIO_REMAPPED;
	FUNC2(&pool->lock, flags);

	return r;
}