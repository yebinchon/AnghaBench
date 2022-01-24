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
struct mdp_superblock_1 {char* device_uuid; } ;
struct mddev {struct md_cluster_info* cluster_info; } ;
struct md_rdev {int /*<<< orphan*/  desc_nr; int /*<<< orphan*/  sb_page; } ;
struct md_cluster_info {int /*<<< orphan*/  wait; int /*<<< orphan*/  state; TYPE_1__* no_new_dev_lockres; } ;
struct cluster_msg {void* raid_slot; int /*<<< orphan*/  uuid; void* type; } ;
typedef  int /*<<< orphan*/  cmsg ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_NOQUEUE ; 
 int /*<<< orphan*/  DLM_LOCK_CR ; 
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 int EAGAIN ; 
 int ENOENT ; 
 int /*<<< orphan*/  MD_CLUSTER_SEND_LOCKED_ALREADY ; 
 int /*<<< orphan*/  NEWDISK ; 
 int FUNC0 (struct md_cluster_info*,struct cluster_msg*) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct md_cluster_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cluster_msg*,int /*<<< orphan*/ ,int) ; 
 struct mdp_superblock_1* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct md_cluster_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct mddev *mddev, struct md_rdev *rdev)
{
	struct md_cluster_info *cinfo = mddev->cluster_info;
	struct cluster_msg cmsg;
	int ret = 0;
	struct mdp_superblock_1 *sb = FUNC6(rdev->sb_page);
	char *uuid = sb->device_uuid;

	FUNC5(&cmsg, 0, sizeof(cmsg));
	cmsg.type = FUNC1(NEWDISK);
	FUNC4(cmsg.uuid, uuid, 16);
	cmsg.raid_slot = FUNC1(rdev->desc_nr);
	FUNC3(cinfo, 1);
	ret = FUNC0(cinfo, &cmsg);
	if (ret) {
		FUNC8(cinfo);
		return ret;
	}
	cinfo->no_new_dev_lockres->flags |= DLM_LKF_NOQUEUE;
	ret = FUNC2(cinfo->no_new_dev_lockres, DLM_LOCK_EX);
	cinfo->no_new_dev_lockres->flags &= ~DLM_LKF_NOQUEUE;
	/* Some node does not "see" the device */
	if (ret == -EAGAIN)
		ret = -ENOENT;
	if (ret)
		FUNC8(cinfo);
	else {
		FUNC2(cinfo->no_new_dev_lockres, DLM_LOCK_CR);
		/* Since MD_CHANGE_DEVS will be set in add_bound_rdev which
		 * will run soon after add_new_disk, the below path will be
		 * invoked:
		 *   md_wakeup_thread(mddev->thread)
		 *	-> conf->thread (raid1d)
		 *	-> md_check_recovery -> md_update_sb
		 *	-> metadata_update_start/finish
		 * MD_CLUSTER_SEND_LOCKED_ALREADY will be cleared eventually.
		 *
		 * For other failure cases, metadata_update_cancel and
		 * add_new_disk_cancel also clear below bit as well.
		 * */
		FUNC7(MD_CLUSTER_SEND_LOCKED_ALREADY, &cinfo->state);
		FUNC9(&cinfo->wait);
	}
	return ret;
}