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
struct TYPE_6__ {int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; int /*<<< orphan*/  srq_limit; } ;
struct pvrdma_cmd_query_srq_resp {TYPE_3__ attrs; } ;
union pvrdma_cmd_resp {struct pvrdma_cmd_query_srq_resp query_srq_resp; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd; } ;
struct pvrdma_cmd_query_srq {int /*<<< orphan*/  srq_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_query_srq query_srq; } ;
struct pvrdma_srq {int /*<<< orphan*/  srq_handle; } ;
struct pvrdma_dev {TYPE_2__* pdev; } ;
struct ib_srq_attr {int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; int /*<<< orphan*/  srq_limit; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PVRDMA_CMD_QUERY_SRQ ; 
 int /*<<< orphan*/  PVRDMA_CMD_QUERY_SRQ_RESP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pvrdma_cmd_query_srq*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int /*<<< orphan*/ ) ; 
 struct pvrdma_dev* FUNC3 (int /*<<< orphan*/ ) ; 
 struct pvrdma_srq* FUNC4 (struct ib_srq*) ; 

int FUNC5(struct ib_srq *ibsrq, struct ib_srq_attr *srq_attr)
{
	struct pvrdma_dev *dev = FUNC3(ibsrq->device);
	struct pvrdma_srq *srq = FUNC4(ibsrq);
	union pvrdma_cmd_req req;
	union pvrdma_cmd_resp rsp;
	struct pvrdma_cmd_query_srq *cmd = &req.query_srq;
	struct pvrdma_cmd_query_srq_resp *resp = &rsp.query_srq_resp;
	int ret;

	FUNC1(cmd, 0, sizeof(*cmd));
	cmd->hdr.cmd = PVRDMA_CMD_QUERY_SRQ;
	cmd->srq_handle = srq->srq_handle;

	ret = FUNC2(dev, &req, &rsp, PVRDMA_CMD_QUERY_SRQ_RESP);
	if (ret < 0) {
		FUNC0(&dev->pdev->dev,
			 "could not query shared receive queue, error: %d\n",
			 ret);
		return -EINVAL;
	}

	srq_attr->srq_limit = resp->attrs.srq_limit;
	srq_attr->max_wr = resp->attrs.max_wr;
	srq_attr->max_sge = resp->attrs.max_sge;

	return 0;
}