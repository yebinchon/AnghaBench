#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mddev {scalar_t__ recovery_cp; scalar_t__ reshape_position; int /*<<< orphan*/  flags; struct md_cluster_info* cluster_info; } ;
struct md_cluster_info {scalar_t__ slot_number; int /*<<< orphan*/  lockspace; int /*<<< orphan*/  bitmap_lockres; int /*<<< orphan*/  resync_lockres; int /*<<< orphan*/  no_new_dev_lockres; int /*<<< orphan*/  ack_lockres; int /*<<< orphan*/  token_lockres; int /*<<< orphan*/  message_lockres; int /*<<< orphan*/  recv_thread; int /*<<< orphan*/  recovery_thread; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_CLOSING ; 
 int /*<<< orphan*/  MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct md_cluster_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*) ; 

__attribute__((used)) static int FUNC8(struct mddev *mddev)
{
	struct md_cluster_info *cinfo = mddev->cluster_info;

	if (!cinfo)
		return 0;

	/*
	 * BITMAP_NEEDS_SYNC message should be sent when node
	 * is leaving the cluster with dirty bitmap, also we
	 * can only deliver it when dlm connection is available.
	 *
	 * Also, we should send BITMAP_NEEDS_SYNC message in
	 * case reshaping is interrupted.
	 */
	if ((cinfo->slot_number > 0 && mddev->recovery_cp != MaxSector) ||
	    (mddev->reshape_position != MaxSector &&
	     FUNC6(MD_CLOSING, &mddev->flags)))
		FUNC4(mddev);

	FUNC5(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state);
	FUNC3(&cinfo->recovery_thread);
	FUNC3(&cinfo->recv_thread);
	FUNC2(cinfo->message_lockres);
	FUNC2(cinfo->token_lockres);
	FUNC2(cinfo->ack_lockres);
	FUNC2(cinfo->no_new_dev_lockres);
	FUNC2(cinfo->resync_lockres);
	FUNC2(cinfo->bitmap_lockres);
	FUNC7(mddev);
	FUNC0(cinfo->lockspace, 2);
	FUNC1(cinfo);
	return 0;
}