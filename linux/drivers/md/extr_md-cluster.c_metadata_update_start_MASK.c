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
struct mddev {int /*<<< orphan*/  thread; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {int /*<<< orphan*/  state; TYPE_1__* token_lockres; int /*<<< orphan*/  wait; } ;
struct TYPE_2__ {scalar_t__ mode; } ;

/* Variables and functions */
 scalar_t__ DLM_LOCK_EX ; 
 int /*<<< orphan*/  MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD ; 
 int /*<<< orphan*/  MD_CLUSTER_SEND_LOCK ; 
 int /*<<< orphan*/  MD_CLUSTER_SEND_LOCKED_ALREADY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct md_cluster_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct mddev *mddev)
{
	struct md_cluster_info *cinfo = mddev->cluster_info;
	int ret;

	/*
	 * metadata_update_start is always called with the protection of
	 * reconfig_mutex, so set WAITING_FOR_TOKEN here.
	 */
	ret = FUNC6(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD,
				    &cinfo->state);
	FUNC0(ret);
	FUNC3(mddev->thread);

	FUNC7(cinfo->wait,
		   !FUNC5(MD_CLUSTER_SEND_LOCK, &cinfo->state) ||
		   FUNC4(MD_CLUSTER_SEND_LOCKED_ALREADY, &cinfo->state));

	/* If token is already locked, return 0 */
	if (cinfo->token_lockres->mode == DLM_LOCK_EX) {
		FUNC1(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state);
		return 0;
	}

	ret = FUNC2(cinfo, 1);
	FUNC1(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state);
	return ret;
}