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
struct pvrdma_cmd_destroy_cq {size_t cq_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_destroy_cq destroy_cq; } ;
struct pvrdma_dev {int /*<<< orphan*/  num_cqs; int /*<<< orphan*/  cq_tbl_lock; int /*<<< orphan*/ ** cq_tbl; TYPE_2__* pdev; } ;
struct pvrdma_cq {size_t cq_handle; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVRDMA_CMD_DESTROY_CQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pvrdma_cmd_destroy_cq*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct pvrdma_dev*,union pvrdma_cmd_req*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pvrdma_dev*,struct pvrdma_cq*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pvrdma_cq* FUNC7 (struct ib_cq*) ; 
 struct pvrdma_dev* FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct ib_cq *cq, struct ib_udata *udata)
{
	struct pvrdma_cq *vcq = FUNC7(cq);
	union pvrdma_cmd_req req;
	struct pvrdma_cmd_destroy_cq *cmd = &req.destroy_cq;
	struct pvrdma_dev *dev = FUNC8(cq->device);
	unsigned long flags;
	int ret;

	FUNC2(cmd, 0, sizeof(*cmd));
	cmd->hdr.cmd = PVRDMA_CMD_DESTROY_CQ;
	cmd->cq_handle = vcq->cq_handle;

	ret = FUNC3(dev, &req, NULL, 0);
	if (ret < 0)
		FUNC1(&dev->pdev->dev,
			 "could not destroy completion queue, error: %d\n",
			 ret);

	/* free cq's resources */
	FUNC5(&dev->cq_tbl_lock, flags);
	dev->cq_tbl[vcq->cq_handle] = NULL;
	FUNC6(&dev->cq_tbl_lock, flags);

	FUNC4(dev, vcq);
	FUNC0(&dev->num_cqs);
}