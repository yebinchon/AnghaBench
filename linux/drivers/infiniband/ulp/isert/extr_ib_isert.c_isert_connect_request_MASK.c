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
struct rdma_cm_id {int /*<<< orphan*/  device; struct isert_np* context; } ;
struct TYPE_2__ {int /*<<< orphan*/  conn; } ;
struct rdma_cm_event {TYPE_1__ param; } ;
struct isert_np {int /*<<< orphan*/  mutex; int /*<<< orphan*/  accepted; struct iscsi_np* np; } ;
struct isert_device {int dummy; } ;
struct isert_conn {int /*<<< orphan*/  node; struct isert_device* device; struct rdma_cm_id* cm_id; } ;
struct iscsi_np {int /*<<< orphan*/  np_thread_lock; int /*<<< orphan*/  enabled; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct isert_device*) ; 
 int FUNC1 (struct isert_device*) ; 
 int FUNC2 (struct isert_conn*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct isert_conn*,struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct isert_device* FUNC5 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC6 (struct isert_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct isert_conn*) ; 
 int FUNC9 (struct isert_conn*) ; 
 int FUNC10 (struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC11 (struct isert_conn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct isert_conn*) ; 
 struct isert_conn* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (struct rdma_cm_id*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
	struct isert_np *isert_np = cma_id->context;
	struct iscsi_np *np = isert_np->np;
	struct isert_conn *isert_conn;
	struct isert_device *device;
	int ret = 0;

	FUNC18(&np->np_thread_lock);
	if (!np->enabled) {
		FUNC19(&np->np_thread_lock);
		FUNC4("iscsi_np is not enabled, reject connect request\n");
		return FUNC17(cma_id, NULL, 0);
	}
	FUNC19(&np->np_thread_lock);

	FUNC4("cma_id: %p, portal: %p\n",
		 cma_id, cma_id->context);

	isert_conn = FUNC13(sizeof(struct isert_conn), GFP_KERNEL);
	if (!isert_conn)
		return -ENOMEM;

	FUNC8(isert_conn);
	isert_conn->cm_id = cma_id;

	ret = FUNC2(isert_conn, cma_id->device);
	if (ret)
		goto out;

	device = FUNC5(cma_id);
	if (FUNC0(device)) {
		ret = FUNC1(device);
		goto out_rsp_dma_map;
	}
	isert_conn->device = device;

	FUNC11(isert_conn, &event->param.conn);

	ret = FUNC3(isert_conn, cma_id);
	if (ret)
		goto out_conn_dev;

	ret = FUNC9(isert_conn);
	if (ret)
		goto out_conn_dev;

	ret = FUNC10(isert_conn);
	if (ret)
		goto out_conn_dev;

	FUNC15(&isert_np->mutex);
	FUNC14(&isert_conn->node, &isert_np->accepted);
	FUNC16(&isert_np->mutex);

	return 0;

out_conn_dev:
	FUNC6(device);
out_rsp_dma_map:
	FUNC7(isert_conn);
out:
	FUNC12(isert_conn);
	FUNC17(cma_id, NULL, 0);
	return ret;
}