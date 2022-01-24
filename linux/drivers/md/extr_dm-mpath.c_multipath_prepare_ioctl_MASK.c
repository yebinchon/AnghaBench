#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* dev; } ;
struct pgpath {TYPE_2__ path; } ;
struct multipath {TYPE_3__* ti; int /*<<< orphan*/  flags; int /*<<< orphan*/  current_pg; int /*<<< orphan*/  current_pgpath; } ;
struct dm_target {scalar_t__ len; struct multipath* private; } ;
struct block_device {int /*<<< orphan*/  bd_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  table; } ;
struct TYPE_4__ {struct block_device* bdev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  MPATHF_PG_INIT_REQUIRED ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IF_NO_PATH ; 
 int /*<<< orphan*/  MPATHF_QUEUE_IO ; 
 struct pgpath* FUNC0 (int /*<<< orphan*/ ) ; 
 int SECTOR_SHIFT ; 
 struct pgpath* FUNC1 (struct multipath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct multipath*) ; 
 int /*<<< orphan*/  FUNC5 (struct multipath*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dm_target *ti,
				   struct block_device **bdev)
{
	struct multipath *m = ti->private;
	struct pgpath *current_pgpath;
	int r;

	current_pgpath = FUNC0(m->current_pgpath);
	if (!current_pgpath)
		current_pgpath = FUNC1(m, 0);

	if (current_pgpath) {
		if (!FUNC6(MPATHF_QUEUE_IO, &m->flags)) {
			*bdev = current_pgpath->path.dev->bdev;
			r = 0;
		} else {
			/* pg_init has not started or completed */
			r = -ENOTCONN;
		}
	} else {
		/* No path is available */
		if (FUNC6(MPATHF_QUEUE_IF_NO_PATH, &m->flags))
			r = -ENOTCONN;
		else
			r = -EIO;
	}

	if (r == -ENOTCONN) {
		if (!FUNC0(m->current_pg)) {
			/* Path status changed, redo selection */
			(void) FUNC1(m, 0);
		}
		if (FUNC6(MPATHF_PG_INIT_REQUIRED, &m->flags))
			FUNC4(m);
		FUNC2(m->ti->table);
		FUNC5(m);
	}

	/*
	 * Only pass ioctls through if the device sizes match exactly.
	 */
	if (!r && ti->len != FUNC3((*bdev)->bd_inode) >> SECTOR_SHIFT)
		return 1;
	return r;
}