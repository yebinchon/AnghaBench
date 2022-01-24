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
struct TYPE_6__ {int /*<<< orphan*/  done; } ;
struct TYPE_5__ {TYPE_3__ tx_cqe; } ;
struct isert_cmd {TYPE_2__ tx_desc; } ;
struct iscsi_conn {int /*<<< orphan*/  context; } ;
struct TYPE_4__ {int /*<<< orphan*/  data_length; } ;
struct iscsi_cmd {int /*<<< orphan*/  write_data_done; TYPE_1__ se_cmd; } ;

/* Variables and functions */
 struct isert_cmd* FUNC0 (struct iscsi_cmd*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct isert_cmd*,int,...) ; 
 int /*<<< orphan*/  isert_rdma_read_done ; 
 int FUNC2 (struct isert_cmd*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct iscsi_conn *conn, struct iscsi_cmd *cmd, bool recovery)
{
	struct isert_cmd *isert_cmd = FUNC0(cmd);
	int ret;

	FUNC1("Cmd: %p RDMA_READ data_length: %u write_data_done: %u\n",
		 isert_cmd, cmd->se_cmd.data_length, cmd->write_data_done);

	isert_cmd->tx_desc.tx_cqe.done = isert_rdma_read_done;
	ret = FUNC2(isert_cmd, conn->context,
				     &isert_cmd->tx_desc.tx_cqe, NULL);

	FUNC1("Cmd: %p posted RDMA_READ memory for ISER Data WRITE rc: %d\n",
		 isert_cmd, ret);
	return ret;
}