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
struct pvrdma_cmd_create_mr_resp {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; int /*<<< orphan*/  mr_handle; } ;
union pvrdma_cmd_resp {struct pvrdma_cmd_create_mr_resp create_mr_resp; } ;
struct TYPE_5__ {int /*<<< orphan*/  cmd; } ;
struct pvrdma_cmd_create_mr {int access_flags; int /*<<< orphan*/  flags; int /*<<< orphan*/  pd_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_create_mr create_mr; } ;
struct ib_mr {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct TYPE_7__ {int /*<<< orphan*/  mr_handle; } ;
struct pvrdma_user_mr {struct ib_mr ibmr; TYPE_3__ mmr; } ;
struct pvrdma_dev {TYPE_2__* pdev; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_8__ {int /*<<< orphan*/  pd_handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_ACCESS_LOCAL_WRITE ; 
 int /*<<< orphan*/  PVRDMA_CMD_CREATE_MR ; 
 int /*<<< orphan*/  PVRDMA_CMD_CREATE_MR_RESP ; 
 int /*<<< orphan*/  PVRDMA_MR_FLAG_DMA ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pvrdma_user_mr*) ; 
 struct pvrdma_user_mr* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pvrdma_cmd_create_mr*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int /*<<< orphan*/ ) ; 
 struct pvrdma_dev* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC7 (struct ib_pd*) ; 

struct ib_mr *FUNC8(struct ib_pd *pd, int acc)
{
	struct pvrdma_dev *dev = FUNC6(pd->device);
	struct pvrdma_user_mr *mr;
	union pvrdma_cmd_req req;
	union pvrdma_cmd_resp rsp;
	struct pvrdma_cmd_create_mr *cmd = &req.create_mr;
	struct pvrdma_cmd_create_mr_resp *resp = &rsp.create_mr_resp;
	int ret;

	/* Support only LOCAL_WRITE flag for DMA MRs */
	if (acc & ~IB_ACCESS_LOCAL_WRITE) {
		FUNC1(&dev->pdev->dev,
			 "unsupported dma mr access flags %#x\n", acc);
		return FUNC0(-EOPNOTSUPP);
	}

	mr = FUNC3(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	FUNC4(cmd, 0, sizeof(*cmd));
	cmd->hdr.cmd = PVRDMA_CMD_CREATE_MR;
	cmd->pd_handle = FUNC7(pd)->pd_handle;
	cmd->access_flags = acc;
	cmd->flags = PVRDMA_MR_FLAG_DMA;

	ret = FUNC5(dev, &req, &rsp, PVRDMA_CMD_CREATE_MR_RESP);
	if (ret < 0) {
		FUNC1(&dev->pdev->dev,
			 "could not get DMA mem region, error: %d\n", ret);
		FUNC2(mr);
		return FUNC0(ret);
	}

	mr->mmr.mr_handle = resp->mr_handle;
	mr->ibmr.lkey = resp->lkey;
	mr->ibmr.rkey = resp->rkey;

	return &mr->ibmr;
}