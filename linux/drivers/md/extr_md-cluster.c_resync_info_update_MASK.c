#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct resync_info {int /*<<< orphan*/  hi; } ;
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {TYPE_2__* bitmap_lockres; } ;
struct cluster_msg {void* high; void* low; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_4__ {int /*<<< orphan*/  sb_lvbptr; } ;
struct TYPE_5__ {TYPE_1__ lksb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_PW ; 
 int /*<<< orphan*/  RESYNCING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct resync_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct md_cluster_info*,struct cluster_msg*,int) ; 

__attribute__((used)) static int FUNC7(struct mddev *mddev, sector_t lo, sector_t hi)
{
	struct md_cluster_info *cinfo = mddev->cluster_info;
	struct resync_info ri;
	struct cluster_msg cmsg = {0};

	/* do not send zero again, if we have sent before */
	if (hi == 0) {
		FUNC5(&ri, cinfo->bitmap_lockres->lksb.sb_lvbptr, sizeof(struct resync_info));
		if (FUNC4(ri.hi) == 0)
			return 0;
	}

	FUNC0(cinfo->bitmap_lockres, lo, hi);
	/* Re-acquire the lock to refresh LVB */
	FUNC3(cinfo->bitmap_lockres, DLM_LOCK_PW);
	cmsg.type = FUNC1(RESYNCING);
	cmsg.low = FUNC2(lo);
	cmsg.high = FUNC2(hi);

	/*
	 * mddev_lock is held if resync_info_update is called from
	 * resync_finish (md_reap_sync_thread -> resync_finish)
	 */
	if (lo == 0 && hi == 0)
		return FUNC6(cinfo, &cmsg, 1);
	else
		return FUNC6(cinfo, &cmsg, 0);
}