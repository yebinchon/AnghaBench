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
struct pool_c {int /*<<< orphan*/  data_dev; int /*<<< orphan*/  metadata_dev; int /*<<< orphan*/  pool; } ;
struct dm_target {struct pool_c* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_target*,int /*<<< orphan*/ ) ; 
 TYPE_1__ dm_thin_pool_table ; 
 int /*<<< orphan*/  FUNC2 (struct pool_c*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct dm_target*) ; 

__attribute__((used)) static void FUNC6(struct dm_target *ti)
{
	struct pool_c *pt = ti->private;

	FUNC3(&dm_thin_pool_table.mutex);

	FUNC5(pt->pool, ti);
	FUNC0(pt->pool);
	FUNC1(ti, pt->metadata_dev);
	FUNC1(ti, pt->data_dev);
	FUNC2(pt);

	FUNC4(&dm_thin_pool_table.mutex);
}