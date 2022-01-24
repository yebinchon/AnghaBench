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
struct TYPE_5__ {int id; int created; int /*<<< orphan*/  dma; } ;
struct ocrdma_eq {int vector; TYPE_2__ q; } ;
struct TYPE_4__ {int /*<<< orphan*/  netdev; } ;
struct ocrdma_dev {TYPE_1__ nic_info; struct ocrdma_create_eq_rsp* mbx_cmd; } ;
struct TYPE_6__ {int rsvd_version; } ;
struct ocrdma_create_eq_rsp {int num_pages; int cnt; int vector_eqid; int /*<<< orphan*/ * pa; int /*<<< orphan*/  valid; TYPE_3__ req; } ;
struct ocrdma_create_eq_req {int num_pages; int cnt; int vector_eqid; int /*<<< orphan*/ * pa; int /*<<< orphan*/  valid; TYPE_3__ req; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCRDMA_CMD_CREATE_EQ ; 
 int OCRDMA_CREATE_EQ_CNT_SHIFT ; 
 int /*<<< orphan*/  OCRDMA_CREATE_EQ_VALID ; 
 int /*<<< orphan*/  OCRDMA_SUBSYS_COMMON ; 
 int /*<<< orphan*/  PAGE_SIZE_4K ; 
 int FUNC0 (int /*<<< orphan*/ ,struct ocrdma_create_eq_rsp*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ocrdma_create_eq_rsp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct ocrdma_dev *dev, struct ocrdma_eq *eq)
{
	int status;
	struct ocrdma_create_eq_req *cmd = dev->mbx_cmd;
	struct ocrdma_create_eq_rsp *rsp = dev->mbx_cmd;

	FUNC1(cmd, 0, sizeof(*cmd));
	FUNC3(&cmd->req, OCRDMA_CMD_CREATE_EQ, OCRDMA_SUBSYS_COMMON,
			sizeof(*cmd));

	cmd->req.rsvd_version = 2;
	cmd->num_pages = 4;
	cmd->valid = OCRDMA_CREATE_EQ_VALID;
	cmd->cnt = 4 << OCRDMA_CREATE_EQ_CNT_SHIFT;

	FUNC2(&cmd->pa[0], cmd->num_pages, eq->q.dma,
			     PAGE_SIZE_4K);
	status = FUNC0(dev->nic_info.netdev, cmd, sizeof(*cmd), NULL,
				 NULL);
	if (!status) {
		eq->q.id = rsp->vector_eqid & 0xffff;
		eq->vector = (rsp->vector_eqid >> 16) & 0xffff;
		eq->q.created = true;
	}
	return status;
}