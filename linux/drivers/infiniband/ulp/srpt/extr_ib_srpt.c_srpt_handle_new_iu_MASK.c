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
typedef  int u8 ;
struct srpt_send_ioctx {int /*<<< orphan*/  recv_ioctx; } ;
struct TYPE_4__ {int offset; struct srp_cmd* buf; int /*<<< orphan*/  dma; } ;
struct srpt_recv_ioctx {int /*<<< orphan*/  wait_list; TYPE_1__ ioctx; } ;
struct srpt_rdma_ch {scalar_t__ state; int processing_wait_list; int /*<<< orphan*/  cmd_wait_list; TYPE_2__* sport; } ;
struct srp_cmd {int opcode; } ;
struct TYPE_6__ {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {TYPE_3__* sdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CH_CONNECTING ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
#define  SRP_AER_RSP 133 
#define  SRP_CMD 132 
#define  SRP_CRED_RSP 131 
#define  SRP_I_LOGOUT 130 
#define  SRP_RSP 129 
#define  SRP_TSK_MGMT 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int srp_max_req_size ; 
 struct srpt_send_ioctx* FUNC8 (struct srpt_rdma_ch*) ; 
 int /*<<< orphan*/  FUNC9 (struct srpt_rdma_ch*,struct srpt_recv_ioctx*,struct srpt_send_ioctx*) ; 
 int /*<<< orphan*/  FUNC10 (struct srpt_rdma_ch*,struct srpt_recv_ioctx*,struct srpt_send_ioctx*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,struct srpt_rdma_ch*,struct srpt_recv_ioctx*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static bool
FUNC13(struct srpt_rdma_ch *ch, struct srpt_recv_ioctx *recv_ioctx)
{
	struct srpt_send_ioctx *send_ioctx = NULL;
	struct srp_cmd *srp_cmd;
	bool res = false;
	u8 opcode;

	FUNC0(!ch);
	FUNC0(!recv_ioctx);

	if (FUNC12(ch->state == CH_CONNECTING))
		goto push;

	FUNC2(ch->sport->sdev->device,
				   recv_ioctx->ioctx.dma,
				   recv_ioctx->ioctx.offset + srp_max_req_size,
				   DMA_FROM_DEVICE);

	srp_cmd = recv_ioctx->ioctx.buf + recv_ioctx->ioctx.offset;
	opcode = srp_cmd->opcode;
	if (opcode == SRP_CMD || opcode == SRP_TSK_MGMT) {
		send_ioctx = FUNC8(ch);
		if (FUNC12(!send_ioctx))
			goto push;
	}

	if (!FUNC5(&recv_ioctx->wait_list)) {
		FUNC1(!ch->processing_wait_list);
		FUNC4(&recv_ioctx->wait_list);
	}

	switch (opcode) {
	case SRP_CMD:
		FUNC9(ch, recv_ioctx, send_ioctx);
		break;
	case SRP_TSK_MGMT:
		FUNC10(ch, recv_ioctx, send_ioctx);
		break;
	case SRP_I_LOGOUT:
		FUNC7("Not yet implemented: SRP_I_LOGOUT\n");
		break;
	case SRP_CRED_RSP:
		FUNC6("received SRP_CRED_RSP\n");
		break;
	case SRP_AER_RSP:
		FUNC6("received SRP_AER_RSP\n");
		break;
	case SRP_RSP:
		FUNC7("Received SRP_RSP\n");
		break;
	default:
		FUNC7("received IU with unknown opcode 0x%x\n", opcode);
		break;
	}

	if (!send_ioctx || !send_ioctx->recv_ioctx)
		FUNC11(ch->sport->sdev, ch, recv_ioctx);
	res = true;

out:
	return res;

push:
	if (FUNC5(&recv_ioctx->wait_list)) {
		FUNC1(ch->processing_wait_list);
		FUNC3(&recv_ioctx->wait_list, &ch->cmd_wait_list);
	}
	goto out;
}