#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct pvrdma_cmd_create_mr_resp {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; int /*<<< orphan*/  mr_handle; } ;
union pvrdma_cmd_resp {struct pvrdma_cmd_create_mr_resp create_mr_resp; } ;
struct TYPE_12__ {int /*<<< orphan*/  cmd; } ;
struct pvrdma_cmd_create_mr {int access_flags; int nchunks; int /*<<< orphan*/  pdir_dma; int /*<<< orphan*/  pd_handle; scalar_t__ length; scalar_t__ start; TYPE_3__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_create_mr create_mr; } ;
typedef  scalar_t__ u64 ;
struct TYPE_16__ {int /*<<< orphan*/  dir_dma; } ;
struct ib_mr {int /*<<< orphan*/  rkey; int /*<<< orphan*/  lkey; } ;
struct TYPE_14__ {int /*<<< orphan*/  mr_handle; scalar_t__ size; scalar_t__ iova; } ;
struct pvrdma_user_mr {TYPE_7__ pdir; struct ib_mr ibmr; TYPE_5__ mmr; struct ib_umem* umem; } ;
struct pvrdma_dev {TYPE_4__* pdev; TYPE_2__* dsr; } ;
struct ib_umem {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;
struct TYPE_15__ {int /*<<< orphan*/  pd_handle; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;
struct TYPE_10__ {scalar_t__ max_mr_size; } ;
struct TYPE_11__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct ib_mr* FUNC0 (struct ib_umem*) ; 
 struct ib_mr* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct ib_umem*) ; 
 int /*<<< orphan*/  PVRDMA_CMD_CREATE_MR ; 
 int /*<<< orphan*/  PVRDMA_CMD_CREATE_MR_RESP ; 
 int PVRDMA_PAGE_DIR_MAX_PAGES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 struct ib_umem* FUNC4 (struct ib_udata*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC7 (struct pvrdma_user_mr*) ; 
 struct pvrdma_user_mr* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct pvrdma_cmd_create_mr*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pvrdma_dev*,TYPE_7__*) ; 
 int FUNC12 (struct pvrdma_dev*,TYPE_7__*,int,int) ; 
 int FUNC13 (TYPE_7__*,struct ib_umem*,int /*<<< orphan*/ ) ; 
 struct pvrdma_dev* FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_6__* FUNC15 (struct ib_pd*) ; 

struct ib_mr *FUNC16(struct ib_pd *pd, u64 start, u64 length,
				 u64 virt_addr, int access_flags,
				 struct ib_udata *udata)
{
	struct pvrdma_dev *dev = FUNC14(pd->device);
	struct pvrdma_user_mr *mr = NULL;
	struct ib_umem *umem;
	union pvrdma_cmd_req req;
	union pvrdma_cmd_resp rsp;
	struct pvrdma_cmd_create_mr *cmd = &req.create_mr;
	struct pvrdma_cmd_create_mr_resp *resp = &rsp.create_mr_resp;
	int ret, npages;

	if (length == 0 || length > dev->dsr->caps.max_mr_size) {
		FUNC3(&dev->pdev->dev, "invalid mem region length\n");
		return FUNC1(-EINVAL);
	}

	umem = FUNC4(udata, start, length, access_flags, 0);
	if (FUNC2(umem)) {
		FUNC3(&dev->pdev->dev,
			 "could not get umem for mem region\n");
		return FUNC0(umem);
	}

	npages = FUNC5(umem);
	if (npages < 0 || npages > PVRDMA_PAGE_DIR_MAX_PAGES) {
		FUNC3(&dev->pdev->dev, "overflow %d pages in mem region\n",
			 npages);
		ret = -EINVAL;
		goto err_umem;
	}

	mr = FUNC8(sizeof(*mr), GFP_KERNEL);
	if (!mr) {
		ret = -ENOMEM;
		goto err_umem;
	}

	mr->mmr.iova = virt_addr;
	mr->mmr.size = length;
	mr->umem = umem;

	ret = FUNC12(dev, &mr->pdir, npages, false);
	if (ret) {
		FUNC3(&dev->pdev->dev,
			 "could not allocate page directory\n");
		goto err_umem;
	}

	ret = FUNC13(&mr->pdir, mr->umem, 0);
	if (ret)
		goto err_pdir;

	FUNC9(cmd, 0, sizeof(*cmd));
	cmd->hdr.cmd = PVRDMA_CMD_CREATE_MR;
	cmd->start = start;
	cmd->length = length;
	cmd->pd_handle = FUNC15(pd)->pd_handle;
	cmd->access_flags = access_flags;
	cmd->nchunks = npages;
	cmd->pdir_dma = mr->pdir.dir_dma;

	ret = FUNC10(dev, &req, &rsp, PVRDMA_CMD_CREATE_MR_RESP);
	if (ret < 0) {
		FUNC3(&dev->pdev->dev,
			 "could not register mem region, error: %d\n", ret);
		goto err_pdir;
	}

	mr->mmr.mr_handle = resp->mr_handle;
	mr->ibmr.lkey = resp->lkey;
	mr->ibmr.rkey = resp->rkey;

	return &mr->ibmr;

err_pdir:
	FUNC11(dev, &mr->pdir);
err_umem:
	FUNC6(umem);
	FUNC7(mr);

	return FUNC1(ret);
}