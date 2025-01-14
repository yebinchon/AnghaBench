
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct creq_register_mr_resp {int dummy; } ;
struct cmdq_register_mr {int log2_pg_size_lvl; int access; void* mr_size; int key; void* va; int log2_pbl_pg_size; void* pbl; } ;
struct bnxt_qplib_res {TYPE_2__* pdev; struct bnxt_qplib_rcfw* rcfw; } ;
struct bnxt_qplib_rcfw {int dummy; } ;
struct TYPE_8__ {int max_elements; scalar_t__ level; TYPE_1__* pbl; scalar_t__ pbl_ptr; } ;
struct bnxt_qplib_mrw {int flags; TYPE_3__ hwq; int total_size; int lkey; int va; } ;
typedef int dma_addr_t ;
struct TYPE_7__ {int dev; } ;
struct TYPE_6__ {int * pg_map_arr; } ;


 int CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_MASK ;
 int CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_SFT ;
 int CMDQ_REGISTER_MR_LOG2_PG_SIZE_MASK ;
 int CMDQ_REGISTER_MR_LOG2_PG_SIZE_SFT ;
 int CMDQ_REGISTER_MR_LVL_SFT ;
 int ENOMEM ;
 int HWQ_TYPE_CTX ;
 int MAX_PBL_LVL_1_PGS ;
 int MAX_PBL_LVL_1_PGS_SHIFT ;
 int PAGE_MASK ;
 scalar_t__ PAGE_SIZE ;
 size_t PBL_LVL_0 ;
 scalar_t__ PBL_LVL_MAX ;
 size_t PTR_IDX (int) ;
 size_t PTR_PG (int) ;
 int PTU_PTE_VALID ;
 int RCFW_CMD_PREP (struct cmdq_register_mr,int ,int) ;
 int REGISTER_MR ;
 int bnxt_qplib_alloc_init_hwq (TYPE_2__*,TYPE_3__*,int *,int*,scalar_t__,int ,scalar_t__,int ) ;
 int bnxt_qplib_free_hwq (TYPE_2__*,TYPE_3__*) ;
 int bnxt_qplib_rcfw_send_message (struct bnxt_qplib_rcfw*,void*,void*,int *,int) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 void* cpu_to_le64 (int ) ;
 int dev_err (int *,char*,...) ;
 int ilog2 (scalar_t__) ;
 int roundup_pow_of_two (int) ;

int bnxt_qplib_reg_mr(struct bnxt_qplib_res *res, struct bnxt_qplib_mrw *mr,
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



  pg_ptrs = roundup_pow_of_two(num_pbls);
  pages = pg_ptrs >> MAX_PBL_LVL_1_PGS_SHIFT;
  if (!pages)
   pages++;

  if (pages > MAX_PBL_LVL_1_PGS) {
   dev_err(&res->pdev->dev,
    "SP: Reg MR pages requested (0x%x) exceeded max (0x%x)\n",
    pages, MAX_PBL_LVL_1_PGS);
   return -ENOMEM;
  }

  if (mr->hwq.max_elements)
   bnxt_qplib_free_hwq(res->pdev, &mr->hwq);

  mr->hwq.max_elements = pages;

  rc = bnxt_qplib_alloc_init_hwq(res->pdev, &mr->hwq, ((void*)0),
            &mr->hwq.max_elements,
            PAGE_SIZE, 0, PAGE_SIZE,
            HWQ_TYPE_CTX);
  if (rc) {
   dev_err(&res->pdev->dev,
    "SP: Reg MR memory allocation failed\n");
   return -ENOMEM;
  }

  pbl_ptr = (dma_addr_t **)mr->hwq.pbl_ptr;
  for (i = 0; i < num_pbls; i++)
   pbl_ptr[PTR_PG(i)][PTR_IDX(i)] =
    (pbl_tbl[i] & PAGE_MASK) | PTU_PTE_VALID;
 }

 RCFW_CMD_PREP(req, REGISTER_MR, cmd_flags);


 if (mr->hwq.level == PBL_LVL_MAX) {

  level = 0;
  req.pbl = 0;
  pg_size = PAGE_SIZE;
 } else {
  level = mr->hwq.level + 1;
  req.pbl = cpu_to_le64(mr->hwq.pbl[PBL_LVL_0].pg_map_arr[0]);
 }
 pg_size = buf_pg_size ? buf_pg_size : PAGE_SIZE;
 req.log2_pg_size_lvl = (level << CMDQ_REGISTER_MR_LVL_SFT) |
          ((ilog2(pg_size) <<
     CMDQ_REGISTER_MR_LOG2_PG_SIZE_SFT) &
    CMDQ_REGISTER_MR_LOG2_PG_SIZE_MASK);
 req.log2_pbl_pg_size = cpu_to_le16(((ilog2(PAGE_SIZE) <<
     CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_SFT) &
    CMDQ_REGISTER_MR_LOG2_PBL_PG_SIZE_MASK));
 req.access = (mr->flags & 0xFFFF);
 req.va = cpu_to_le64(mr->va);
 req.key = cpu_to_le32(mr->lkey);
 req.mr_size = cpu_to_le64(mr->total_size);

 rc = bnxt_qplib_rcfw_send_message(rcfw, (void *)&req,
       (void *)&resp, ((void*)0), block);
 if (rc)
  goto fail;

 return 0;

fail:
 if (mr->hwq.max_elements)
  bnxt_qplib_free_hwq(res->pdev, &mr->hwq);
 return rc;
}
