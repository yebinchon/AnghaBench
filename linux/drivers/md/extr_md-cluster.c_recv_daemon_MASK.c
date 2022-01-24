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
struct md_thread {TYPE_2__* mddev; } ;
struct md_cluster_info {int /*<<< orphan*/  recv_mutex; struct dlm_lock_resource* message_lockres; struct dlm_lock_resource* ack_lockres; } ;
struct TYPE_3__ {int /*<<< orphan*/  sb_lvbptr; } ;
struct dlm_lock_resource {TYPE_1__ lksb; } ;
struct cluster_msg {int dummy; } ;
struct TYPE_4__ {struct md_cluster_info* cluster_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_CR ; 
 int /*<<< orphan*/  DLM_LOCK_PR ; 
 int FUNC0 (struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC2 (struct cluster_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (TYPE_2__*,struct cluster_msg*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct md_thread *thread)
{
	struct md_cluster_info *cinfo = thread->mddev->cluster_info;
	struct dlm_lock_resource *ack_lockres = cinfo->ack_lockres;
	struct dlm_lock_resource *message_lockres = cinfo->message_lockres;
	struct cluster_msg msg;
	int ret;

	FUNC3(&cinfo->recv_mutex);
	/*get CR on Message*/
	if (FUNC0(message_lockres, DLM_LOCK_CR)) {
		FUNC5("md/raid1:failed to get CR on MESSAGE\n");
		FUNC4(&cinfo->recv_mutex);
		return;
	}

	/* read lvb and wake up thread to process this message_lockres */
	FUNC2(&msg, message_lockres->lksb.sb_lvbptr, sizeof(struct cluster_msg));
	ret = FUNC7(thread->mddev, &msg);
	if (ret)
		goto out;

	/*release CR on ack_lockres*/
	ret = FUNC1(ack_lockres);
	if (FUNC8(ret != 0))
		FUNC6("unlock ack failed return %d\n", ret);
	/*up-convert to PR on message_lockres*/
	ret = FUNC0(message_lockres, DLM_LOCK_PR);
	if (FUNC8(ret != 0))
		FUNC6("lock PR on msg failed return %d\n", ret);
	/*get CR on ack_lockres again*/
	ret = FUNC0(ack_lockres, DLM_LOCK_CR);
	if (FUNC8(ret != 0))
		FUNC6("lock CR on ack failed return %d\n", ret);
out:
	/*release CR on message_lockres*/
	ret = FUNC1(message_lockres);
	if (FUNC8(ret != 0))
		FUNC6("unlock msg failed return %d\n", ret);
	FUNC4(&cinfo->recv_mutex);
}