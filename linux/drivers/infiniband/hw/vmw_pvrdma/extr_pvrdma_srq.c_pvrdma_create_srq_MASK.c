#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct pvrdma_cmd_create_srq_resp {size_t srqn; } ;
union pvrdma_cmd_resp {struct pvrdma_cmd_create_srq_resp create_srq_resp; } ;
struct TYPE_12__ {scalar_t__ max_wr; scalar_t__ max_sge; int /*<<< orphan*/  srq_limit; } ;
struct TYPE_11__ {int /*<<< orphan*/  cmd; } ;
struct pvrdma_cmd_create_srq {scalar_t__ nchunks; int /*<<< orphan*/  pdir_dma; TYPE_2__ attrs; int /*<<< orphan*/  pd_handle; int /*<<< orphan*/  srq_type; TYPE_1__ hdr; } ;
union pvrdma_cmd_req {struct pvrdma_cmd_create_srq create_srq; } ;
typedef  int /*<<< orphan*/  ucmd ;
struct TYPE_18__ {int /*<<< orphan*/  dir_dma; } ;
struct pvrdma_srq {scalar_t__ npages; size_t srq_handle; int /*<<< orphan*/  umem; TYPE_8__ pdir; int /*<<< orphan*/  ibsrq; int /*<<< orphan*/  free; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  lock; } ;
struct pvrdma_dev {int /*<<< orphan*/  num_srqs; TYPE_6__* pdev; int /*<<< orphan*/  srq_tbl_lock; TYPE_5__* dsr; struct pvrdma_srq** srq_tbl; } ;
struct pvrdma_create_srq_resp {size_t srqn; } ;
struct pvrdma_create_srq {int /*<<< orphan*/  buf_size; int /*<<< orphan*/  buf_addr; } ;
struct ib_udata {int dummy; } ;
struct TYPE_13__ {scalar_t__ max_wr; scalar_t__ max_sge; int /*<<< orphan*/  srq_limit; } ;
struct ib_srq_init_attr {TYPE_3__ attr; int /*<<< orphan*/  srq_type; } ;
struct ib_srq {int /*<<< orphan*/  pd; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  srq_resp ;
struct TYPE_17__ {int /*<<< orphan*/  pd_handle; } ;
struct TYPE_16__ {int /*<<< orphan*/  dev; } ;
struct TYPE_14__ {scalar_t__ max_srq_wr; scalar_t__ max_srq_sge; size_t max_srq; } ;
struct TYPE_15__ {TYPE_4__ caps; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IB_SRQT_BASIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PVRDMA_CMD_CREATE_SRQ ; 
 int /*<<< orphan*/  PVRDMA_CMD_CREATE_SRQ_RESP ; 
 scalar_t__ PVRDMA_PAGE_DIR_MAX_PAGES ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC6 (struct pvrdma_create_srq*,struct ib_udata*,int) ; 
 scalar_t__ FUNC7 (struct ib_udata*,struct pvrdma_create_srq_resp*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_udata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct pvrdma_cmd_create_srq*,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct pvrdma_dev*,union pvrdma_cmd_req*,union pvrdma_cmd_resp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC15 (struct pvrdma_dev*,TYPE_8__*) ; 
 int FUNC16 (struct pvrdma_dev*,TYPE_8__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pvrdma_dev* FUNC22 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC23 (int /*<<< orphan*/ ) ; 
 struct pvrdma_srq* FUNC24 (struct ib_srq*) ; 

int FUNC25(struct ib_srq *ibsrq, struct ib_srq_init_attr *init_attr,
		      struct ib_udata *udata)
{
	struct pvrdma_srq *srq = FUNC24(ibsrq);
	struct pvrdma_dev *dev = FUNC22(ibsrq->device);
	union pvrdma_cmd_req req;
	union pvrdma_cmd_resp rsp;
	struct pvrdma_cmd_create_srq *cmd = &req.create_srq;
	struct pvrdma_cmd_create_srq_resp *resp = &rsp.create_srq_resp;
	struct pvrdma_create_srq_resp srq_resp = {};
	struct pvrdma_create_srq ucmd;
	unsigned long flags;
	int ret;

	if (!udata) {
		/* No support for kernel clients. */
		FUNC5(&dev->pdev->dev,
			 "no shared receive queue support for kernel client\n");
		return -EOPNOTSUPP;
	}

	if (init_attr->srq_type != IB_SRQT_BASIC) {
		FUNC5(&dev->pdev->dev,
			 "shared receive queue type %d not supported\n",
			 init_attr->srq_type);
		return -EINVAL;
	}

	if (init_attr->attr.max_wr  > dev->dsr->caps.max_srq_wr ||
	    init_attr->attr.max_sge > dev->dsr->caps.max_srq_sge) {
		FUNC5(&dev->pdev->dev,
			 "shared receive queue size invalid\n");
		return -EINVAL;
	}

	if (!FUNC2(&dev->num_srqs, 1, dev->dsr->caps.max_srq))
		return -ENOMEM;

	FUNC19(&srq->lock);
	FUNC18(&srq->refcnt, 1);
	FUNC11(&srq->free);

	FUNC4(&dev->pdev->dev,
		"create shared receive queue from user space\n");

	if (FUNC6(&ucmd, udata, sizeof(ucmd))) {
		ret = -EFAULT;
		goto err_srq;
	}

	srq->umem = FUNC8(udata, ucmd.buf_addr, ucmd.buf_size, 0, 0);
	if (FUNC0(srq->umem)) {
		ret = FUNC1(srq->umem);
		goto err_srq;
	}

	srq->npages = FUNC9(srq->umem);

	if (srq->npages < 0 || srq->npages > PVRDMA_PAGE_DIR_MAX_PAGES) {
		FUNC5(&dev->pdev->dev,
			 "overflow pages in shared receive queue\n");
		ret = -EINVAL;
		goto err_umem;
	}

	ret = FUNC16(dev, &srq->pdir, srq->npages, false);
	if (ret) {
		FUNC5(&dev->pdev->dev,
			 "could not allocate page directory\n");
		goto err_umem;
	}

	FUNC17(&srq->pdir, srq->umem, 0);

	FUNC12(cmd, 0, sizeof(*cmd));
	cmd->hdr.cmd = PVRDMA_CMD_CREATE_SRQ;
	cmd->srq_type = init_attr->srq_type;
	cmd->nchunks = srq->npages;
	cmd->pd_handle = FUNC23(ibsrq->pd)->pd_handle;
	cmd->attrs.max_wr = init_attr->attr.max_wr;
	cmd->attrs.max_sge = init_attr->attr.max_sge;
	cmd->attrs.srq_limit = init_attr->attr.srq_limit;
	cmd->pdir_dma = srq->pdir.dir_dma;

	ret = FUNC13(dev, &req, &rsp, PVRDMA_CMD_CREATE_SRQ_RESP);
	if (ret < 0) {
		FUNC5(&dev->pdev->dev,
			 "could not create shared receive queue, error: %d\n",
			 ret);
		goto err_page_dir;
	}

	srq->srq_handle = resp->srqn;
	srq_resp.srqn = resp->srqn;
	FUNC20(&dev->srq_tbl_lock, flags);
	dev->srq_tbl[srq->srq_handle % dev->dsr->caps.max_srq] = srq;
	FUNC21(&dev->srq_tbl_lock, flags);

	/* Copy udata back. */
	if (FUNC7(udata, &srq_resp, sizeof(srq_resp))) {
		FUNC5(&dev->pdev->dev, "failed to copy back udata\n");
		FUNC14(&srq->ibsrq, udata);
		return -EINVAL;
	}

	return 0;

err_page_dir:
	FUNC15(dev, &srq->pdir);
err_umem:
	FUNC10(srq->umem);
err_srq:
	FUNC3(&dev->num_srqs);

	return ret;
}