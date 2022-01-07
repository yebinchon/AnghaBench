
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct bnxt_qplib_ctx {int stats; int tqm_pde; int * tqm_tbl; int tim_tbl; int cq_tbl; int srqc_tbl; int mrw_tbl; int qpc_tbl; } ;


 int MAX_TQM_ALLOC_REQ ;
 int bnxt_qplib_free_hwq (struct pci_dev*,int *) ;
 int bnxt_qplib_free_stats_ctx (struct pci_dev*,int *) ;

void bnxt_qplib_free_ctx(struct pci_dev *pdev,
    struct bnxt_qplib_ctx *ctx)
{
 int i;

 bnxt_qplib_free_hwq(pdev, &ctx->qpc_tbl);
 bnxt_qplib_free_hwq(pdev, &ctx->mrw_tbl);
 bnxt_qplib_free_hwq(pdev, &ctx->srqc_tbl);
 bnxt_qplib_free_hwq(pdev, &ctx->cq_tbl);
 bnxt_qplib_free_hwq(pdev, &ctx->tim_tbl);
 for (i = 0; i < MAX_TQM_ALLOC_REQ; i++)
  bnxt_qplib_free_hwq(pdev, &ctx->tqm_tbl[i]);
 bnxt_qplib_free_hwq(pdev, &ctx->tqm_pde);
 bnxt_qplib_free_stats_ctx(pdev, &ctx->stats);
}
