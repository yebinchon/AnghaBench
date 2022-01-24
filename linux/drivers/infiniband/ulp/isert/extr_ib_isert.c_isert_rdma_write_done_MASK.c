#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct se_cmd {int /*<<< orphan*/  pi_err; int /*<<< orphan*/  cmd_kref; } ;
struct isert_device {int /*<<< orphan*/  ib_device; } ;
struct isert_conn {int /*<<< orphan*/  conn; struct isert_device* device; } ;
struct TYPE_7__ {TYPE_2__* reg; } ;
struct isert_cmd {TYPE_4__* iscsi_cmd; TYPE_3__ rw; } ;
struct iser_tx_desc {int dummy; } ;
struct ib_wc {scalar_t__ status; int /*<<< orphan*/  wr_cqe; TYPE_1__* qp; } ;
struct ib_cq {int dummy; } ;
struct TYPE_8__ {struct se_cmd se_cmd; } ;
struct TYPE_6__ {int /*<<< orphan*/  mr; } ;
struct TYPE_5__ {struct isert_conn* qp_context; } ;

/* Variables and functions */
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ IB_WC_WR_FLUSH_ERR ; 
 struct iser_tx_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iser_tx_desc*,struct isert_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct isert_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_wc*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct isert_cmd*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 struct isert_cmd* FUNC11 (struct iser_tx_desc*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13(struct ib_cq *cq, struct ib_wc *wc)
{
	struct isert_conn *isert_conn = wc->qp->qp_context;
	struct isert_device *device = isert_conn->device;
	struct iser_tx_desc *desc = FUNC0(wc->wr_cqe);
	struct isert_cmd *isert_cmd = FUNC11(desc);
	struct se_cmd *cmd = &isert_cmd->iscsi_cmd->se_cmd;
	int ret = 0;

	if (FUNC12(wc->status != IB_WC_SUCCESS)) {
		FUNC5(wc, "rdma write");
		if (wc->status != IB_WC_WR_FLUSH_ERR)
			FUNC1(isert_conn->conn, 0);
		FUNC3(desc, isert_cmd, device->ib_device, true);
		return;
	}

	FUNC4("Cmd %p\n", isert_cmd);

	ret = FUNC2(cmd, isert_cmd->rw.reg->mr);
	FUNC7(isert_cmd, isert_conn);

	if (ret) {
		/*
		 * transport_generic_request_failure() expects to have
		 * plus two references to handle queue-full, so re-add
		 * one here as target-core will have already dropped
		 * it after the first isert_put_datain() callback.
		 */
		FUNC8(&cmd->cmd_kref);
		FUNC10(cmd, cmd->pi_err);
	} else {
		/*
		 * XXX: isert_put_response() failure is not retried.
		 */
		ret = FUNC6(isert_conn->conn, isert_cmd->iscsi_cmd);
		if (ret)
			FUNC9("isert_put_response() ret: %d\n", ret);
	}
}