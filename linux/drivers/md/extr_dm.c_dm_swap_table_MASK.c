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
struct queue_limits {int dummy; } ;
struct mapped_device {int /*<<< orphan*/  suspend_lock; TYPE_1__* queue; } ;
struct dm_table {int dummy; } ;
struct TYPE_2__ {struct queue_limits limits; } ;

/* Variables and functions */
 int EINVAL ; 
 struct dm_table* FUNC0 (int) ; 
 struct dm_table* FUNC1 (struct mapped_device*,struct dm_table*,struct queue_limits*) ; 
 int FUNC2 (struct dm_table*,struct queue_limits*) ; 
 struct dm_table* FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct mapped_device*) ; 
 scalar_t__ FUNC7 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct dm_table *FUNC10(struct mapped_device *md, struct dm_table *table)
{
	struct dm_table *live_map = NULL, *map = FUNC0(-EINVAL);
	struct queue_limits limits;
	int r;

	FUNC8(&md->suspend_lock);

	/* device must be suspended */
	if (!FUNC6(md))
		goto out;

	/*
	 * If the new table has no data devices, retain the existing limits.
	 * This helps multipath with queue_if_no_path if all paths disappear,
	 * then new I/O is queued based on these limits, and then some paths
	 * reappear.
	 */
	if (FUNC7(table)) {
		live_map = FUNC3(md);
		if (live_map)
			limits = md->queue->limits;
		FUNC5(md);
	}

	if (!live_map) {
		r = FUNC2(table, &limits);
		if (r) {
			map = FUNC0(r);
			goto out;
		}
	}

	map = FUNC1(md, table, &limits);
	FUNC4();

out:
	FUNC9(&md->suspend_lock);
	return map;
}