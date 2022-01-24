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
typedef  int /*<<< orphan*/  u64 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int max_elements; int level; TYPE_1__* pbl; scalar_t__ pbl_ptr; } ;
struct bnxt_qplib_ctx {int qpc_count; int mrw_count; int srqc_count; int cq_count; int* tqm_count; int tqm_pde_level; int /*<<< orphan*/  stats; TYPE_2__ tim_tbl; TYPE_2__* tqm_tbl; TYPE_2__ tqm_pde; TYPE_2__ cq_tbl; TYPE_2__ srqc_tbl; TYPE_2__ mrw_tbl; TYPE_2__ qpc_tbl; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_3__ {int pg_count; int* pg_map_arr; } ;

/* Variables and functions */
 int BNXT_QPLIB_MAX_CQ_CTX_ENTRY_SIZE ; 
 int BNXT_QPLIB_MAX_MRW_CTX_ENTRY_SIZE ; 
 int BNXT_QPLIB_MAX_QP_CTX_ENTRY_SIZE ; 
 int BNXT_QPLIB_MAX_SRQ_CTX_ENTRY_SIZE ; 
 int /*<<< orphan*/  HWQ_TYPE_CTX ; 
 scalar_t__ MAX_TQM_ALLOC_BLK_SIZE ; 
 int MAX_TQM_ALLOC_REQ ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
#define  PBL_LVL_0 130 
#define  PBL_LVL_1 129 
#define  PBL_LVL_2 128 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int PTU_PTE_VALID ; 
 int FUNC2 (struct pci_dev*,TYPE_2__*,int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct pci_dev*,struct bnxt_qplib_ctx*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

int FUNC6(struct pci_dev *pdev,
			 struct bnxt_qplib_ctx *ctx,
			 bool virt_fn, bool is_p5)
{
	int i, j, k, rc = 0;
	int fnz_idx = -1;
	__le64 **pbl_ptr;

	if (virt_fn || is_p5)
		goto stats_alloc;

	/* QPC Tables */
	ctx->qpc_tbl.max_elements = ctx->qpc_count;
	rc = FUNC2(pdev, &ctx->qpc_tbl, NULL,
				       &ctx->qpc_tbl.max_elements,
				       BNXT_QPLIB_MAX_QP_CTX_ENTRY_SIZE, 0,
				       PAGE_SIZE, HWQ_TYPE_CTX);
	if (rc)
		goto fail;

	/* MRW Tables */
	ctx->mrw_tbl.max_elements = ctx->mrw_count;
	rc = FUNC2(pdev, &ctx->mrw_tbl, NULL,
				       &ctx->mrw_tbl.max_elements,
				       BNXT_QPLIB_MAX_MRW_CTX_ENTRY_SIZE, 0,
				       PAGE_SIZE, HWQ_TYPE_CTX);
	if (rc)
		goto fail;

	/* SRQ Tables */
	ctx->srqc_tbl.max_elements = ctx->srqc_count;
	rc = FUNC2(pdev, &ctx->srqc_tbl, NULL,
				       &ctx->srqc_tbl.max_elements,
				       BNXT_QPLIB_MAX_SRQ_CTX_ENTRY_SIZE, 0,
				       PAGE_SIZE, HWQ_TYPE_CTX);
	if (rc)
		goto fail;

	/* CQ Tables */
	ctx->cq_tbl.max_elements = ctx->cq_count;
	rc = FUNC2(pdev, &ctx->cq_tbl, NULL,
				       &ctx->cq_tbl.max_elements,
				       BNXT_QPLIB_MAX_CQ_CTX_ENTRY_SIZE, 0,
				       PAGE_SIZE, HWQ_TYPE_CTX);
	if (rc)
		goto fail;

	/* TQM Buffer */
	ctx->tqm_pde.max_elements = 512;
	rc = FUNC2(pdev, &ctx->tqm_pde, NULL,
				       &ctx->tqm_pde.max_elements, sizeof(u64),
				       0, PAGE_SIZE, HWQ_TYPE_CTX);
	if (rc)
		goto fail;

	for (i = 0; i < MAX_TQM_ALLOC_REQ; i++) {
		if (!ctx->tqm_count[i])
			continue;
		ctx->tqm_tbl[i].max_elements = ctx->qpc_count *
					       ctx->tqm_count[i];
		rc = FUNC2(pdev, &ctx->tqm_tbl[i], NULL,
					       &ctx->tqm_tbl[i].max_elements, 1,
					       0, PAGE_SIZE, HWQ_TYPE_CTX);
		if (rc)
			goto fail;
	}
	pbl_ptr = (__le64 **)ctx->tqm_pde.pbl_ptr;
	for (i = 0, j = 0; i < MAX_TQM_ALLOC_REQ;
	     i++, j += MAX_TQM_ALLOC_BLK_SIZE) {
		if (!ctx->tqm_tbl[i].max_elements)
			continue;
		if (fnz_idx == -1)
			fnz_idx = i;
		switch (ctx->tqm_tbl[i].level) {
		case PBL_LVL_2:
			for (k = 0; k < ctx->tqm_tbl[i].pbl[PBL_LVL_1].pg_count;
			     k++)
				pbl_ptr[FUNC1(j + k)][FUNC0(j + k)] =
				  FUNC5(
				    ctx->tqm_tbl[i].pbl[PBL_LVL_1].pg_map_arr[k]
				    | PTU_PTE_VALID);
			break;
		case PBL_LVL_1:
		case PBL_LVL_0:
		default:
			pbl_ptr[FUNC1(j)][FUNC0(j)] = FUNC5(
				ctx->tqm_tbl[i].pbl[PBL_LVL_0].pg_map_arr[0] |
				PTU_PTE_VALID);
			break;
		}
	}
	if (fnz_idx == -1)
		fnz_idx = 0;
	ctx->tqm_pde_level = ctx->tqm_tbl[fnz_idx].level == PBL_LVL_2 ?
			     PBL_LVL_2 : ctx->tqm_tbl[fnz_idx].level + 1;

	/* TIM Buffer */
	ctx->tim_tbl.max_elements = ctx->qpc_count * 16;
	rc = FUNC2(pdev, &ctx->tim_tbl, NULL,
				       &ctx->tim_tbl.max_elements, 1,
				       0, PAGE_SIZE, HWQ_TYPE_CTX);
	if (rc)
		goto fail;

stats_alloc:
	/* Stats */
	rc = FUNC3(pdev, &ctx->stats);
	if (rc)
		goto fail;

	return 0;

fail:
	FUNC4(pdev, ctx);
	return rc;
}