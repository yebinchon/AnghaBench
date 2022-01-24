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
struct queue_limits {int /*<<< orphan*/  max_discard_sectors; int /*<<< orphan*/  discard_granularity; } ;
struct dm_target {struct dm_snapshot* private; } ;
struct dm_snapshot {TYPE_1__* store; scalar_t__ discard_zeroes_cow; } ;
struct TYPE_2__ {int /*<<< orphan*/  chunk_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_snapshot*,struct dm_snapshot**,struct dm_snapshot**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  _origins_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct dm_target *ti, struct queue_limits *limits)
{
	struct dm_snapshot *snap = ti->private;

	if (snap->discard_zeroes_cow) {
		struct dm_snapshot *snap_src = NULL, *snap_dest = NULL;

		FUNC1(&_origins_lock);

		(void) FUNC0(snap, &snap_src, &snap_dest, NULL);
		if (snap_src && snap_dest)
			snap = snap_src;

		/* All discards are split on chunk_size boundary */
		limits->discard_granularity = snap->store->chunk_size;
		limits->max_discard_sectors = snap->store->chunk_size;

		FUNC2(&_origins_lock);
	}
}