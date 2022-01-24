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
struct TYPE_2__ {int /*<<< orphan*/  cluster_name; } ;
struct mddev {struct md_cluster_info* cluster_info; TYPE_1__ bitmap_info; int /*<<< orphan*/  uuid; } ;
struct md_cluster_info {int slot_number; scalar_t__ lockspace; void* bitmap_lockres; void* resync_lockres; void* no_new_dev_lockres; void* ack_lockres; void* token_lockres; void* message_lockres; int /*<<< orphan*/  recv_thread; int /*<<< orphan*/  recovery_thread; int /*<<< orphan*/  state; int /*<<< orphan*/  completion; struct mddev* mddev; int /*<<< orphan*/  recv_mutex; int /*<<< orphan*/  wait; int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  suspend_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_CR ; 
 int /*<<< orphan*/  DLM_LOCK_EX ; 
 int /*<<< orphan*/  DLM_LOCK_PW ; 
 int /*<<< orphan*/  DLM_LSFL_FS ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LVB_SIZE ; 
 int /*<<< orphan*/  MD_CLUSTER_BEGIN_JOIN_CLUSTER ; 
 int /*<<< orphan*/  MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD ; 
 int /*<<< orphan*/ * ack_bast ; 
 int FUNC1 (void*,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mddev*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct md_cluster_info*) ; 
 struct md_cluster_info* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* FUNC10 (struct mddev*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  md_ls_ops ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct mddev*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*,char*,int) ; 
 int /*<<< orphan*/  recv_daemon ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC22(struct mddev *mddev, int nodes)
{
	struct md_cluster_info *cinfo;
	int ret, ops_rv;
	char str[64];

	cinfo = FUNC8(sizeof(struct md_cluster_info), GFP_KERNEL);
	if (!cinfo)
		return -ENOMEM;

	FUNC0(&cinfo->suspend_list);
	FUNC19(&cinfo->suspend_lock);
	FUNC5(&cinfo->completion);
	FUNC17(MD_CLUSTER_BEGIN_JOIN_CLUSTER, &cinfo->state);
	FUNC6(&cinfo->wait);
	FUNC14(&cinfo->recv_mutex);

	mddev->cluster_info = cinfo;
	cinfo->mddev = mddev;

	FUNC13(str, 0, 64);
	FUNC20(str, "%pU", mddev->uuid);
	ret = FUNC2(str, mddev->bitmap_info.cluster_name,
				DLM_LSFL_FS, LVB_SIZE,
				&md_ls_ops, mddev, &ops_rv, &cinfo->lockspace);
	if (ret)
		goto err;
	FUNC21(&cinfo->completion);
	if (nodes < cinfo->slot_number) {
		FUNC15("md-cluster: Slot allotted(%d) is greater than available slots(%d).",
			cinfo->slot_number, nodes);
		ret = -ERANGE;
		goto err;
	}
	/* Initiate the communication resources */
	ret = -ENOMEM;
	cinfo->recv_thread = FUNC11(recv_daemon, mddev, "cluster_recv");
	if (!cinfo->recv_thread) {
		FUNC15("md-cluster: cannot allocate memory for recv_thread!\n");
		goto err;
	}
	cinfo->message_lockres = FUNC10(mddev, "message", NULL, 1);
	if (!cinfo->message_lockres)
		goto err;
	cinfo->token_lockres = FUNC10(mddev, "token", NULL, 0);
	if (!cinfo->token_lockres)
		goto err;
	cinfo->no_new_dev_lockres = FUNC10(mddev, "no-new-dev", NULL, 0);
	if (!cinfo->no_new_dev_lockres)
		goto err;

	ret = FUNC1(cinfo->token_lockres, DLM_LOCK_EX);
	if (ret) {
		ret = -EAGAIN;
		FUNC15("md-cluster: can't join cluster to avoid lock issue\n");
		goto err;
	}
	cinfo->ack_lockres = FUNC10(mddev, "ack", ack_bast, 0);
	if (!cinfo->ack_lockres) {
		ret = -ENOMEM;
		goto err;
	}
	/* get sync CR lock on ACK. */
	if (FUNC1(cinfo->ack_lockres, DLM_LOCK_CR))
		FUNC15("md-cluster: failed to get a sync CR lock on ACK!(%d)\n",
				ret);
	FUNC4(cinfo->token_lockres);
	/* get sync CR lock on no-new-dev. */
	if (FUNC1(cinfo->no_new_dev_lockres, DLM_LOCK_CR))
		FUNC15("md-cluster: failed to get a sync CR lock on no-new-dev!(%d)\n", ret);


	FUNC16("md-cluster: Joined cluster %s slot %d\n", str, cinfo->slot_number);
	FUNC18(str, 64, "bitmap%04d", cinfo->slot_number - 1);
	cinfo->bitmap_lockres = FUNC10(mddev, str, NULL, 1);
	if (!cinfo->bitmap_lockres) {
		ret = -ENOMEM;
		goto err;
	}
	if (FUNC1(cinfo->bitmap_lockres, DLM_LOCK_PW)) {
		FUNC15("Failed to get bitmap lock\n");
		ret = -EINVAL;
		goto err;
	}

	cinfo->resync_lockres = FUNC10(mddev, "resync", NULL, 0);
	if (!cinfo->resync_lockres) {
		ret = -ENOMEM;
		goto err;
	}

	return 0;
err:
	FUNC17(MD_CLUSTER_HOLDING_MUTEX_FOR_RECVD, &cinfo->state);
	FUNC12(&cinfo->recovery_thread);
	FUNC12(&cinfo->recv_thread);
	FUNC9(cinfo->message_lockres);
	FUNC9(cinfo->token_lockres);
	FUNC9(cinfo->ack_lockres);
	FUNC9(cinfo->no_new_dev_lockres);
	FUNC9(cinfo->resync_lockres);
	FUNC9(cinfo->bitmap_lockres);
	if (cinfo->lockspace)
		FUNC3(cinfo->lockspace, 2);
	mddev->cluster_info = NULL;
	FUNC7(cinfo);
	return ret;
}