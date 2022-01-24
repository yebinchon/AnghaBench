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
struct pvrdma_cmd_create_mr {int nchunks; int /*<<< orphan*/  flags; scalar_t__ access_flags; int /*<<< orphan*/  pd_handle; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_create_mr create_mr; } ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
struct ib_mr {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct TYPE_7__ {int /*<<< orphan*/  mr_handle; } ;
struct pvrdma_user_mr {int max_pages; struct pvrdma_user_mr* pages; int /*<<< orphan*/  pdir; struct ib_mr ibmr; int /*<<< orphan*/ * umem; int /*<<< orphan*/  page_shift; TYPE_3__ mmr; } ;
struct pvrdma_dev {TYPE_2__* pdev; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
typedef  enum ib_mr_type { ____Placeholder_ib_mr_type } ib_mr_type ;
struct TYPE_8__ {int /*<<< orphan*/  pd_handle; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IB_MR_TYPE_MEM_REG ; 
 int /*<<< orphan*/  PAGE_SHIFT ; 
 int /*<<< orphan*/  PVRDMA_CMD_CREATE_MR ; 
 int /*<<< orphan*/  PVRDMA_CMD_CREATE_MR_RESP ; 
 int PVRDMA_MAX_FAST_REG_PAGES ; 
 int /*<<< orphan*/  PVRDMA_MR_FLAG_FRMR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pvrdma_user_mr*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pvrdma_cmd_create_mr*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pvrdma_dev*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct pvrdma_dev*,int /*<<< orphan*/ *,int,int) ; 
 struct pvrdma_dev* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (struct ib_pd*) ; 

struct ib_mr *FUNC10(struct ib_pd *pd, enum ib_mr_type mr_type,
			      u32 max_num_sg, struct ib_udata *udata)
{
	struct pvrdma_dev *dev = FUNC8(pd->device);
	struct pvrdma_user_mr *mr;
	union pvrdma_cmd_req req;
	union pvrdma_cmd_resp rsp;
	struct pvrdma_cmd_create_mr *cmd = &req.create_mr;
	struct pvrdma_cmd_create_mr_resp *resp = &rsp.create_mr_resp;
	int size = max_num_sg * sizeof(u64);
	int ret;

	if (mr_type != IB_MR_TYPE_MEM_REG ||
	    max_num_sg > PVRDMA_MAX_FAST_REG_PAGES)
		return FUNC0(-EINVAL);

	mr = FUNC3(sizeof(*mr), GFP_KERNEL);
	if (!mr)
		return FUNC0(-ENOMEM);

	mr->pages = FUNC3(size, GFP_KERNEL);
	if (!mr->pages) {
		ret = -ENOMEM;
		goto freemr;
	}

	ret = FUNC7(dev, &mr->pdir, max_num_sg, false);
	if (ret) {
		FUNC1(&dev->pdev->dev,
			 "failed to allocate page dir for mr\n");
		ret = -ENOMEM;
		goto freepages;
	}

	FUNC4(cmd, 0, sizeof(*cmd));
	cmd->hdr.cmd = PVRDMA_CMD_CREATE_MR;
	cmd->pd_handle = FUNC9(pd)->pd_handle;
	cmd->access_flags = 0;
	cmd->flags = PVRDMA_MR_FLAG_FRMR;
	cmd->nchunks = max_num_sg;

	ret = FUNC5(dev, &req, &rsp, PVRDMA_CMD_CREATE_MR_RESP);
	if (ret < 0) {
		FUNC1(&dev->pdev->dev,
			 "could not create FR mem region, error: %d\n", ret);
		goto freepdir;
	}

	mr->max_pages = max_num_sg;
	mr->mmr.mr_handle = resp->mr_handle;
	mr->ibmr.lkey = resp->lkey;
	mr->ibmr.rkey = resp->rkey;
	mr->page_shift = PAGE_SHIFT;
	mr->umem = NULL;

	return &mr->ibmr;

freepdir:
	FUNC6(dev, &mr->pdir);
freepages:
	FUNC2(mr->pages);
freemr:
	FUNC2(mr);
	return FUNC0(ret);
}