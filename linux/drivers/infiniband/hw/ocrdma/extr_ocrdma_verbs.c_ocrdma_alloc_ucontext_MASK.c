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
typedef  int /*<<< orphan*/  u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  pa; int /*<<< orphan*/  va; int /*<<< orphan*/  len; } ;
struct ocrdma_ucontext {TYPE_3__ ah_tbl; int /*<<< orphan*/  mm_list_lock; int /*<<< orphan*/  mm_head; } ;
struct TYPE_5__ {int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  wqe_size; int /*<<< orphan*/  rqe_size; int /*<<< orphan*/  max_inline_data; } ;
struct TYPE_4__ {struct pci_dev* pdev; } ;
struct ocrdma_dev {TYPE_2__ attr; int /*<<< orphan*/  id; TYPE_1__ nic_info; } ;
struct ocrdma_alloc_ucontext_resp {int /*<<< orphan*/  fw_ver; int /*<<< orphan*/  dpp_wqe_size; int /*<<< orphan*/  rqe_size; int /*<<< orphan*/  wqe_size; int /*<<< orphan*/  max_inline_data; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  ah_tbl_len; int /*<<< orphan*/  ah_tbl_page; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  resp ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ocrdma_dev* FUNC3 (struct ib_device*) ; 
 struct ocrdma_ucontext* FUNC4 (struct ib_ucontext*) ; 
 int FUNC5 (struct ib_udata*,struct ocrdma_alloc_ucontext_resp*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct ocrdma_ucontext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ocrdma_dev*,struct ocrdma_ucontext*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocrdma_ucontext*) ; 
 int /*<<< orphan*/  FUNC11 (struct ocrdma_ucontext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct ib_ucontext *uctx, struct ib_udata *udata)
{
	struct ib_device *ibdev = uctx->device;
	int status;
	struct ocrdma_ucontext *ctx = FUNC4(uctx);
	struct ocrdma_alloc_ucontext_resp resp = {};
	struct ocrdma_dev *dev = FUNC3(ibdev);
	struct pci_dev *pdev = dev->nic_info.pdev;
	u32 map_len = FUNC12(sizeof(u32) * 2048, PAGE_SIZE);

	if (!udata)
		return -EFAULT;
	FUNC0(&ctx->mm_head);
	FUNC7(&ctx->mm_list_lock);

	ctx->ah_tbl.va = FUNC1(&pdev->dev, map_len,
					    &ctx->ah_tbl.pa, GFP_KERNEL);
	if (!ctx->ah_tbl.va)
		return -ENOMEM;

	ctx->ah_tbl.len = map_len;

	resp.ah_tbl_len = ctx->ah_tbl.len;
	resp.ah_tbl_page = FUNC13(ctx->ah_tbl.va);

	status = FUNC8(ctx, resp.ah_tbl_page, resp.ah_tbl_len);
	if (status)
		goto map_err;

	status = FUNC9(dev, ctx, udata);
	if (status)
		goto pd_err;

	resp.dev_id = dev->id;
	resp.max_inline_data = dev->attr.max_inline_data;
	resp.wqe_size = dev->attr.wqe_size;
	resp.rqe_size = dev->attr.rqe_size;
	resp.dpp_wqe_size = dev->attr.wqe_size;

	FUNC6(resp.fw_ver, dev->attr.fw_ver, sizeof(resp.fw_ver));
	status = FUNC5(udata, &resp, sizeof(resp));
	if (status)
		goto cpy_err;
	return 0;

cpy_err:
	FUNC10(ctx);
pd_err:
	FUNC11(ctx, ctx->ah_tbl.pa, ctx->ah_tbl.len);
map_err:
	FUNC2(&pdev->dev, ctx->ah_tbl.len, ctx->ah_tbl.va,
			  ctx->ah_tbl.pa);
	return status;
}