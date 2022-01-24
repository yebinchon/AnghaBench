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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct mddev {char* last_sync_action; int /*<<< orphan*/  level; void* resync_max; scalar_t__ resync_min; scalar_t__ reshape_backwards; void* reshape_position; int /*<<< orphan*/  recovery_wait; int /*<<< orphan*/  sb_wait; int /*<<< orphan*/  flush_pending; int /*<<< orphan*/  lock; int /*<<< orphan*/  active_io; int /*<<< orphan*/  openers; int /*<<< orphan*/  active; int /*<<< orphan*/  safemode_timer; int /*<<< orphan*/  all_mddevs; int /*<<< orphan*/  disks; TYPE_1__ bitmap_info; int /*<<< orphan*/  reconfig_mutex; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LEVEL_NONE ; 
 void* MaxSector ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  md_ktype ; 
 int /*<<< orphan*/  md_safemode_timeout ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct mddev *mddev)
{
	FUNC3(&mddev->kobj, &md_ktype);
	FUNC4(&mddev->open_mutex);
	FUNC4(&mddev->reconfig_mutex);
	FUNC4(&mddev->bitmap_info.mutex);
	FUNC0(&mddev->disks);
	FUNC0(&mddev->all_mddevs);
	FUNC6(&mddev->safemode_timer, md_safemode_timeout, 0);
	FUNC1(&mddev->active, 1);
	FUNC1(&mddev->openers, 0);
	FUNC1(&mddev->active_io, 0);
	FUNC5(&mddev->lock);
	FUNC1(&mddev->flush_pending, 0);
	FUNC2(&mddev->sb_wait);
	FUNC2(&mddev->recovery_wait);
	mddev->reshape_position = MaxSector;
	mddev->reshape_backwards = 0;
	mddev->last_sync_action = "none";
	mddev->resync_min = 0;
	mddev->resync_max = MaxSector;
	mddev->level = LEVEL_NONE;
}