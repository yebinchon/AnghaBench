
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int max_elements; int level; TYPE_1__* pbl; scalar_t__ pbl_ptr; } ;
struct bnxt_qplib_ctx {int qpc_count; int mrw_count; int srqc_count; int cq_count; int* tqm_count; int tqm_pde_level; int stats; TYPE_2__ tim_tbl; TYPE_2__* tqm_tbl; TYPE_2__ tqm_pde; TYPE_2__ cq_tbl; TYPE_2__ srqc_tbl; TYPE_2__ mrw_tbl; TYPE_2__ qpc_tbl; } ;
typedef int __le64 ;
struct TYPE_3__ {int pg_count; int* pg_map_arr; } ;


 int BNXT_QPLIB_MAX_CQ_CTX_ENTRY_SIZE ;
 int BNXT_QPLIB_MAX_MRW_CTX_ENTRY_SIZE ;
 int BNXT_QPLIB_MAX_QP_CTX_ENTRY_SIZE ;
 int BNXT_QPLIB_MAX_SRQ_CTX_ENTRY_SIZE ;
 int HWQ_TYPE_CTX ;
 scalar_t__ MAX_TQM_ALLOC_BLK_SIZE ;
 int MAX_TQM_ALLOC_REQ ;
 int PAGE_SIZE ;



 size_t PTR_IDX (int) ;
 size_t PTR_PG (int) ;
 int PTU_PTE_VALID ;
 int bnxt_qplib_alloc_init_hwq (struct pci_dev*,TYPE_2__*,int *,int*,int,int ,int ,int ) ;
 int bnxt_qplib_alloc_stats_ctx (struct pci_dev*,int *) ;
 int bnxt_qplib_free_ctx (struct pci_dev*,struct bnxt_qplib_ctx*) ;
 int cpu_to_le64 (int) ;

int bnxt_qplib_alloc_ctx(struct pci_dev *pdev,
    struct bnxt_qplib_ctx *ctx,
    bool virt_fn, bool is_p5)
{
 int i, j, k, rc = 0;
 int fnz_idx = -1;
 __le64 **pbl_ptr;

 if (virt_fn || is_p5)
  goto stats_alloc;


 ctx->qpc_tbl.max_elements = ctx->qpc_count;
 rc = bnxt_qplib_alloc_init_hwq(pdev, &ctx->qpc_tbl, ((void*)0),
           &ctx->qpc_tbl.max_elements,
           BNXT_QPLIB_MAX_QP_CTX_ENTRY_SIZE, 0,
           PAGE_SIZE, HWQ_TYPE_CTX);
 if (rc)
  goto fail;


 ctx->mrw_tbl.max_elements = ctx->mrw_count;
 rc = bnxt_qplib_alloc_init_hwq(pdev, &ctx->mrw_tbl, ((void*)0),
           &ctx->mrw_tbl.max_elements,
           BNXT_QPLIB_MAX_MRW_CTX_ENTRY_SIZE, 0,
           PAGE_SIZE, HWQ_TYPE_CTX);
 if (rc)
  goto fail;


 ctx->srqc_tbl.max_elements = ctx->srqc_count;
 rc = bnxt_qplib_alloc_init_hwq(pdev, &ctx->srqc_tbl, ((void*)0),
           &ctx->srqc_tbl.max_elements,
           BNXT_QPLIB_MAX_SRQ_CTX_ENTRY_SIZE, 0,
           PAGE_SIZE, HWQ_TYPE_CTX);
 if (rc)
  goto fail;


 ctx->cq_tbl.max_elements = ctx->cq_count;
 rc = bnxt_qplib_alloc_init_hwq(pdev, &ctx->cq_tbl, ((void*)0),
           &ctx->cq_tbl.max_elements,
           BNXT_QPLIB_MAX_CQ_CTX_ENTRY_SIZE, 0,
           PAGE_SIZE, HWQ_TYPE_CTX);
 if (rc)
  goto fail;


 ctx->tqm_pde.max_elements = 512;
 rc = bnxt_qplib_alloc_init_hwq(pdev, &ctx->tqm_pde, ((void*)0),
           &ctx->tqm_pde.max_elements, sizeof(u64),
           0, PAGE_SIZE, HWQ_TYPE_CTX);
 if (rc)
  goto fail;

 for (i = 0; i < MAX_TQM_ALLOC_REQ; i++) {
  if (!ctx->tqm_count[i])
   continue;
  ctx->tqm_tbl[i].max_elements = ctx->qpc_count *
            ctx->tqm_count[i];
  rc = bnxt_qplib_alloc_init_hwq(pdev, &ctx->tqm_tbl[i], ((void*)0),
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
  case 128:
   for (k = 0; k < ctx->tqm_tbl[i].pbl[129].pg_count;
        k++)
    pbl_ptr[PTR_PG(j + k)][PTR_IDX(j + k)] =
      cpu_to_le64(
        ctx->tqm_tbl[i].pbl[129].pg_map_arr[k]
        | PTU_PTE_VALID);
   break;
  case 129:
  case 130:
  default:
   pbl_ptr[PTR_PG(j)][PTR_IDX(j)] = cpu_to_le64(
    ctx->tqm_tbl[i].pbl[130].pg_map_arr[0] |
    PTU_PTE_VALID);
   break;
  }
 }
 if (fnz_idx == -1)
  fnz_idx = 0;
 ctx->tqm_pde_level = ctx->tqm_tbl[fnz_idx].level == 128 ?
        128 : ctx->tqm_tbl[fnz_idx].level + 1;


 ctx->tim_tbl.max_elements = ctx->qpc_count * 16;
 rc = bnxt_qplib_alloc_init_hwq(pdev, &ctx->tim_tbl, ((void*)0),
           &ctx->tim_tbl.max_elements, 1,
           0, PAGE_SIZE, HWQ_TYPE_CTX);
 if (rc)
  goto fail;

stats_alloc:

 rc = bnxt_qplib_alloc_stats_ctx(pdev, &ctx->stats);
 if (rc)
  goto fail;

 return 0;

fail:
 bnxt_qplib_free_ctx(pdev, ctx);
 return rc;
}
