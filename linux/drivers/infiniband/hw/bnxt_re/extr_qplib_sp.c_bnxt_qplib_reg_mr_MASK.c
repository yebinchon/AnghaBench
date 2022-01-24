#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  scalar_t__ u32 ;
typedef  int u16 ;
struct creq_register_mr_resp {int dummy; } ;
struct cmdq_register_mr {int log2_pg_size_lvl; int access; void* mr_size; int /*<<< orphan*/  key; void* va; int /*<<< orphan*/  log2_pbl_pg_size; void* pbl; } ;
struct bnxt_qplib_res {TYPE_2__* pdev; struct bnxt_qplib_rcfw* rcfw; } ;
struct bnxt_qplib_rcfw {int dummy; } ;
struct TYPE_8__ {int max_elements; scalar_t__ level; TYPE_1__* pbl; scalar_t__ pbl_ptr; } ;
struct bnxt_qplib_mrw {int flags; TYPE_3__ hwq; int /*<<< orphan*/  total_size; int /*<<< orphan*/  lkey; int /*<<< orphan*/  va; } ;
typedef  int dma_addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/ * pg_map_arr; } ;

/* Variables and functions */
 int CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_MASK ; 
 int CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_SFT ; 
 int CMDQ_REGISTER_MR_LOG2_PG_SIZE_MASK ; 
 int CMDQ_REGISTER_MR_LOG2_PG_SIZE_SFT ; 
 int CMDQ_REGISTER_MR_LVL_SFT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HWQ_TYPE_CTX ; 
 int MAX_PBL_LVL_1_PGS ; 
 int MAX_PBL_LVL_1_PGS_SHIFT ; 
 int PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 size_t PBL_LVL_0 ; 
 scalar_t__ PBL_LVL_MAX ; 
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 
 int PTU_PTE_VALID ; 
 int /*<<< orphan*/  FUNC2 (struct cmdq_register_mr,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  REGISTER_MR ; 
 int FUNC3 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *,int*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC5 (struct bnxt_qplib_rcfw*,void*,void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC10 (scalar_t__) ; 
 int FUNC11 (int) ; 

int FUNC12(struct bnxt_qplib_res *res, struct bnxt_qplib_mrw *mr,
		      u64 *pbl_tbl, int num_pbls, bool block, u32 buf_pg_size)
{
	struct bnxt_qplib_rcfw *rcfw = res->rcfw;
	struct cmdq_register_mr req;
	struct creq_register_mr_resp resp;
	u16 cmd_flags = 0, level;
	int pg_ptrs, pages, i, rc;
	dma_addr_t **pbl_ptr;
	u32 pg_size;

	if (num_pbls) {
		/* Allocate memory for the non-leaf pages to store buf ptrs.
		 * Non-leaf pages always uses system PAGE_SIZE
		 */
		pg_ptrs = FUNC11(num_pbls);
		pages = pg_ptrs >> MAX_PBL_LVL_1_PGS_SHIFT;
		if (!pages)
			pages++;

		if (pages > MAX_PBL_LVL_1_PGS) {
			FUNC9(&res->pdev->dev,
				"SP: Reg MR pages requested (0x%x) exceeded max (0x%x)\n",
				pages, MAX_PBL_LVL_1_PGS);
			return -ENOMEM;
		}
		/* Free the hwq if it already exist, must be a rereg */
		if (mr->hwq.max_elements)
			FUNC4(res->pdev, &mr->hwq);

		mr->hwq.max_elements = pages;
		/* Use system PAGE_SIZE */
		rc = FUNC3(res->pdev, &mr->hwq, NULL,
					       &mr->hwq.max_elements,
					       PAGE_SIZE, 0, PAGE_SIZE,
					       HWQ_TYPE_CTX);
		if (rc) {
			FUNC9(&res->pdev->dev,
				"SP: Reg MR memory allocation failed\n");
			return -ENOMEM;
		}
		/* Write to the hwq */
		pbl_ptr = (dma_addr_t **)mr->hwq.pbl_ptr;
		for (i = 0; i < num_pbls; i++)
			pbl_ptr[FUNC1(i)][FUNC0(i)] =
				(pbl_tbl[i] & PAGE_MASK) | PTU_PTE_VALID;
	}

	FUNC2(req, REGISTER_MR, cmd_flags);

	/* Configure the request */
	if (mr->hwq.level == PBL_LVL_MAX) {
		/* No PBL provided, just use system PAGE_SIZE */
		level = 0;
		req.pbl = 0;
		pg_size = PAGE_SIZE;
	} else {
		level = mr->hwq.level + 1;
		req.pbl = FUNC8(mr->hwq.pbl[PBL_LVL_0].pg_map_arr[0]);
	}
	pg_size = buf_pg_size ? buf_pg_size : PAGE_SIZE;
	req.log2_pg_size_lvl = (level << CMDQ_REGISTER_MR_LVL_SFT) |
			       ((FUNC10(pg_size) <<
				 CMDQ_REGISTER_MR_LOG2_PG_SIZE_SFT) &
				CMDQ_REGISTER_MR_LOG2_PG_SIZE_MASK);
	req.log2_pbl_pg_size = FUNC6(((FUNC10(PAGE_SIZE) <<
				 CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_SFT) &
				CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_MASK));
	req.access = (mr->flags & 0xFFFF);
	req.va = FUNC8(mr->va);
	req.key = FUNC7(mr->lkey);
	req.mr_size = FUNC8(mr->total_size);

	rc = FUNC5(rcfw, (void *)&req,
					  (void *)&resp, NULL, block);
	if (rc)
		goto fail;

	return 0;

fail:
	if (mr->hwq.max_elements)
		FUNC4(res->pdev, &mr->hwq);
	return rc;
}