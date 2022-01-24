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
struct TYPE_3__ {int /*<<< orphan*/  cmd; } ;
struct pvrdma_cmd_destroy_srq {int /*<<< orphan*/  srq_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_destroy_srq destroy_srq; } ;
struct pvrdma_srq {int /*<<< orphan*/  srq_handle; } ;
struct pvrdma_dev {TYPE_2__* pdev; } ;
struct ib_udata {int dummy; } ;
struct ib_srq {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVRDMA_CMD_DESTROY_SRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pvrdma_cmd_destroy_srq*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct pvrdma_dev*,union pvrdma_cmd_req*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pvrdma_dev*,struct pvrdma_srq*) ; 
 struct pvrdma_dev* FUNC4 (int /*<<< orphan*/ ) ; 
 struct pvrdma_srq* FUNC5 (struct ib_srq*) ; 

void FUNC6(struct ib_srq *srq, struct ib_udata *udata)
{
	struct pvrdma_srq *vsrq = FUNC5(srq);
	union pvrdma_cmd_req req;
	struct pvrdma_cmd_destroy_srq *cmd = &req.destroy_srq;
	struct pvrdma_dev *dev = FUNC4(srq->device);
	int ret;

	FUNC1(cmd, 0, sizeof(*cmd));
	cmd->hdr.cmd = PVRDMA_CMD_DESTROY_SRQ;
	cmd->srq_handle = vsrq->srq_handle;

	ret = FUNC2(dev, &req, NULL, 0);
	if (ret < 0)
		FUNC0(&dev->pdev->dev,
			 "destroy shared receive queue failed, error: %d\n",
			 ret);

	FUNC3(dev, vsrq);
}