#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int max_elements; } ;
struct bnxt_qplib_rcfw {int cmdq_depth; int qp_tbl_size; void* qp_tbl; void* crsqe_tbl; TYPE_1__ cmdq; struct pci_dev* pdev; TYPE_1__ creq; int /*<<< orphan*/  res; } ;
struct bnxt_qplib_qp_node {int dummy; } ;
struct bnxt_qplib_ctx {scalar_t__ hwrm_intf_ver; } ;

/* Variables and functions */
 int BNXT_QPLIB_CMDQE_MAX_CNT_256 ; 
 int BNXT_QPLIB_CMDQE_MAX_CNT_8192 ; 
 int /*<<< orphan*/  BNXT_QPLIB_CMDQE_UNITS ; 
 int BNXT_QPLIB_CREQE_MAX_CNT ; 
 int /*<<< orphan*/  BNXT_QPLIB_CREQE_UNITS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HWQ_TYPE_CTX ; 
 scalar_t__ HWRM_VERSION_RCFW_CMDQ_DEPTH_CHECK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct pci_dev*,TYPE_1__*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt_qplib_rcfw*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int,int,int /*<<< orphan*/ ) ; 

int FUNC6(struct pci_dev *pdev,
				  struct bnxt_qplib_rcfw *rcfw,
				  struct bnxt_qplib_ctx *ctx,
				  int qp_tbl_sz)
{
	u8 hwq_type;

	rcfw->pdev = pdev;
	rcfw->creq.max_elements = BNXT_QPLIB_CREQE_MAX_CNT;
	hwq_type = FUNC3(rcfw->res);
	if (FUNC0(rcfw->pdev, &rcfw->creq, NULL,
				      &rcfw->creq.max_elements,
				      BNXT_QPLIB_CREQE_UNITS,
				      0, PAGE_SIZE, hwq_type)) {
		FUNC4(&rcfw->pdev->dev,
			"HW channel CREQ allocation failed\n");
		goto fail;
	}
	if (ctx->hwrm_intf_ver < HWRM_VERSION_RCFW_CMDQ_DEPTH_CHECK)
		rcfw->cmdq_depth = BNXT_QPLIB_CMDQE_MAX_CNT_256;
	else
		rcfw->cmdq_depth = BNXT_QPLIB_CMDQE_MAX_CNT_8192;

	rcfw->cmdq.max_elements = rcfw->cmdq_depth;
	if (FUNC0
			(rcfw->pdev, &rcfw->cmdq, NULL,
			 &rcfw->cmdq.max_elements,
			 BNXT_QPLIB_CMDQE_UNITS, 0,
			 FUNC1(rcfw->cmdq_depth),
			 HWQ_TYPE_CTX)) {
		FUNC4(&rcfw->pdev->dev,
			"HW channel CMDQ allocation failed\n");
		goto fail;
	}

	rcfw->crsqe_tbl = FUNC5(rcfw->cmdq.max_elements,
				  sizeof(*rcfw->crsqe_tbl), GFP_KERNEL);
	if (!rcfw->crsqe_tbl)
		goto fail;

	rcfw->qp_tbl_size = qp_tbl_sz;
	rcfw->qp_tbl = FUNC5(qp_tbl_sz, sizeof(struct bnxt_qplib_qp_node),
			       GFP_KERNEL);
	if (!rcfw->qp_tbl)
		goto fail;

	return 0;

fail:
	FUNC2(rcfw);
	return -ENOMEM;
}