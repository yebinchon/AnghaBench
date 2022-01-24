#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct se_cmd {int data_length; } ;
struct isert_conn {int dummy; } ;
struct ib_send_wr {int dummy; } ;
struct ib_cqe {int /*<<< orphan*/  done; } ;
struct TYPE_3__ {struct ib_send_wr send_wr; int /*<<< orphan*/  iscsi_header; struct ib_cqe tx_cqe; } ;
struct isert_cmd {TYPE_1__ tx_desc; int /*<<< orphan*/  rx_desc; } ;
struct iscsi_scsi_rsp {int dummy; } ;
struct iscsi_conn {struct isert_conn* context; } ;
struct iscsi_cmd {struct se_cmd se_cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_cmd*,struct iscsi_conn*,int,struct iscsi_scsi_rsp*) ; 
 struct isert_cmd* FUNC1 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct isert_conn*,struct isert_cmd*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct isert_cmd*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct isert_conn*,struct isert_cmd*,struct ib_send_wr*) ; 
 int /*<<< orphan*/  FUNC6 (struct isert_conn*,TYPE_1__*) ; 
 int FUNC7 (struct isert_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct isert_conn*,struct se_cmd*) ; 
 int FUNC9 (struct isert_cmd*,struct isert_conn*,struct ib_cqe*,struct ib_send_wr*) ; 
 int /*<<< orphan*/  isert_rdma_write_done ; 

__attribute__((used)) static int
FUNC10(struct iscsi_conn *conn, struct iscsi_cmd *cmd)
{
	struct se_cmd *se_cmd = &cmd->se_cmd;
	struct isert_cmd *isert_cmd = FUNC1(cmd);
	struct isert_conn *isert_conn = conn->context;
	struct ib_cqe *cqe = NULL;
	struct ib_send_wr *chain_wr = NULL;
	int rc;

	FUNC3("Cmd: %p RDMA_WRITE data_length: %u\n",
		 isert_cmd, se_cmd->data_length);

	if (FUNC8(isert_conn, se_cmd)) {
		isert_cmd->tx_desc.tx_cqe.done = isert_rdma_write_done;
		cqe = &isert_cmd->tx_desc.tx_cqe;
	} else {
		/*
		 * Build isert_conn->tx_desc for iSCSI response PDU and attach
		 */
		FUNC2(isert_conn, isert_cmd,
				       &isert_cmd->tx_desc);
		FUNC0(cmd, conn, true, (struct iscsi_scsi_rsp *)
				     &isert_cmd->tx_desc.iscsi_header);
		FUNC6(isert_conn, &isert_cmd->tx_desc);
		FUNC5(isert_conn, isert_cmd,
				   &isert_cmd->tx_desc.send_wr);

		rc = FUNC7(isert_conn, isert_cmd->rx_desc);
		if (rc) {
			FUNC4("ib_post_recv failed with %d\n", rc);
			return rc;
		}

		chain_wr = &isert_cmd->tx_desc.send_wr;
	}

	rc = FUNC9(isert_cmd, isert_conn, cqe, chain_wr);
	FUNC3("Cmd: %p posted RDMA_WRITE for iSER Data READ rc: %d\n",
		  isert_cmd, rc);
	return rc;
}