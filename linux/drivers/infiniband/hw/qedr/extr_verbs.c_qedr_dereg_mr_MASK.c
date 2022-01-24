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
struct TYPE_6__ {int /*<<< orphan*/  pbl_table; int /*<<< orphan*/  pbl_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  itid; } ;
struct qedr_mr {scalar_t__ type; int /*<<< orphan*/  umem; TYPE_3__ info; TYPE_2__ hw_mr; } ;
struct qedr_dev {int /*<<< orphan*/  rdma_ctx; TYPE_1__* ops; } ;
struct ib_udata {int dummy; } ;
struct ib_mr {int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int (* rdma_deregister_tid ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* rdma_free_tid ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ QEDR_MR_DMA ; 
 scalar_t__ QEDR_MR_FRMR ; 
 struct qedr_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct qedr_mr* FUNC1 (struct ib_mr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qedr_mr*) ; 
 int /*<<< orphan*/  FUNC4 (struct qedr_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(struct ib_mr *ib_mr, struct ib_udata *udata)
{
	struct qedr_mr *mr = FUNC1(ib_mr);
	struct qedr_dev *dev = FUNC0(ib_mr->device);
	int rc = 0;

	rc = dev->ops->rdma_deregister_tid(dev->rdma_ctx, mr->hw_mr.itid);
	if (rc)
		return rc;

	dev->ops->rdma_free_tid(dev->rdma_ctx, mr->hw_mr.itid);

	if ((mr->type != QEDR_MR_DMA) && (mr->type != QEDR_MR_FRMR))
		FUNC4(dev, &mr->info.pbl_info, mr->info.pbl_table);

	/* it could be user registered memory. */
	FUNC2(mr->umem);

	FUNC3(mr);

	return rc;
}