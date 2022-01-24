#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct se_cmd {int /*<<< orphan*/  pi_err; } ;
struct isert_device {int /*<<< orphan*/  ib_device; } ;
struct isert_conn {int /*<<< orphan*/  conn; struct isert_device* device; } ;
struct TYPE_6__ {TYPE_2__* reg; } ;
struct isert_cmd {TYPE_3__ rw; struct iscsi_cmd* iscsi_cmd; } ;
struct iser_tx_desc {int dummy; } ;
struct iscsi_cmd {int /*<<< orphan*/  istate_lock; int /*<<< orphan*/  i_state; int /*<<< orphan*/  cmd_flags; scalar_t__ write_data_done; struct se_cmd se_cmd; } ;
struct ib_wc {scalar_t__ status; int /*<<< orphan*/  wr_cqe; TYPE_1__* qp; } ;
struct ib_cq {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  mr; } ;
struct TYPE_4__ {struct isert_conn* qp_context; } ;

/* Variables and functions */
 scalar_t__ IB_WC_SUCCESS ; 
 scalar_t__ IB_WC_WR_FLUSH_ERR ; 
 int /*<<< orphan*/  ICF_GOT_LAST_DATAOUT ; 
 int /*<<< orphan*/  ISTATE_RECEIVED_LAST_DATAOUT ; 
 struct iser_tx_desc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_cmd*) ; 
 int FUNC3 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iser_tx_desc*,struct isert_cmd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct isert_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_wc*,char*) ; 
 scalar_t__ FUNC7 (struct isert_conn*,struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC8 (struct isert_cmd*,struct isert_conn*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC12 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 struct isert_cmd* FUNC13 (struct iser_tx_desc*) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static void
FUNC15(struct ib_cq *cq, struct ib_wc *wc)
{
	struct isert_conn *isert_conn = wc->qp->qp_context;
	struct isert_device *device = isert_conn->device;
	struct iser_tx_desc *desc = FUNC0(wc->wr_cqe);
	struct isert_cmd *isert_cmd = FUNC13(desc);
	struct iscsi_cmd *cmd = isert_cmd->iscsi_cmd;
	struct se_cmd *se_cmd = &cmd->se_cmd;
	int ret = 0;

	if (FUNC14(wc->status != IB_WC_SUCCESS)) {
		FUNC6(wc, "rdma read");
		if (wc->status != IB_WC_WR_FLUSH_ERR)
			FUNC1(isert_conn->conn, 0);
		FUNC4(desc, isert_cmd, device->ib_device, true);
		return;
	}

	FUNC5("Cmd %p\n", isert_cmd);

	FUNC2(cmd);

	if (FUNC7(isert_conn, se_cmd))
		ret = FUNC3(se_cmd, isert_cmd->rw.reg->mr);
	FUNC8(isert_cmd, isert_conn);
	cmd->write_data_done = 0;

	FUNC5("Cmd: %p RDMA_READ comp calling execute_cmd\n", isert_cmd);
	FUNC9(&cmd->istate_lock);
	cmd->cmd_flags |= ICF_GOT_LAST_DATAOUT;
	cmd->i_state = ISTATE_RECEIVED_LAST_DATAOUT;
	FUNC10(&cmd->istate_lock);

	/*
	 * transport_generic_request_failure() will drop the extra
	 * se_cmd->cmd_kref reference after T10-PI error, and handle
	 * any non-zero ->queue_status() callback error retries.
	 */
	if (ret)
		FUNC12(se_cmd, se_cmd->pi_err);
	else
		FUNC11(se_cmd);
}