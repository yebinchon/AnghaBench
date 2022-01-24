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
struct mddev {int /*<<< orphan*/  good_device_nr; TYPE_1__* thread; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int /*<<< orphan*/  state; int /*<<< orphan*/  no_new_dev_lockres; } ;
struct cluster_msg {int /*<<< orphan*/  raid_slot; } ;
struct TYPE_2__ {int /*<<< orphan*/  wqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_CR ; 
 int /*<<< orphan*/  MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct mddev *mddev, struct cluster_msg *msg)
{
	int got_lock = 0;
	struct md_cluster_info *cinfo = mddev->cluster_info;
	mddev->good_device_nr = FUNC1(msg->raid_slot);

	FUNC0(cinfo->no_new_dev_lockres, DLM_LOCK_CR);
	FUNC6(mddev->thread->wqueue,
		   (got_lock = FUNC3(mddev)) ||
		    FUNC5(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state));
	FUNC2(mddev, mddev->good_device_nr);
	if (got_lock)
		FUNC4(mddev);
}