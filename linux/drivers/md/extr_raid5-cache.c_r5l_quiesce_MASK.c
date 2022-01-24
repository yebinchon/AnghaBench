#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct r5l_log {TYPE_2__* reclaim_thread; TYPE_1__* rdev; } ;
struct mddev {int /*<<< orphan*/  sb_wait; } ;
struct TYPE_4__ {int /*<<< orphan*/  tsk; } ;
struct TYPE_3__ {struct mddev* mddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MaxSector ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r5l_log*) ; 
 int /*<<< orphan*/  FUNC3 (struct r5l_log*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct r5l_log *log, int quiesce)
{
	struct mddev *mddev;

	if (quiesce) {
		/* make sure r5l_write_super_and_discard_space exits */
		mddev = log->rdev->mddev;
		FUNC4(&mddev->sb_wait);
		FUNC0(log->reclaim_thread->tsk);
		FUNC3(log, MaxSector);
		FUNC2(log);
	} else
		FUNC1(log->reclaim_thread->tsk);
}