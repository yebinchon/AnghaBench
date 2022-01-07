
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dev; } ;
struct TYPE_2__ {int max_elements; } ;
struct bnxt_qplib_rcfw {int cmdq_depth; int qp_tbl_size; void* qp_tbl; void* crsqe_tbl; TYPE_1__ cmdq; struct pci_dev* pdev; TYPE_1__ creq; int res; } ;
struct bnxt_qplib_qp_node {int dummy; } ;
struct bnxt_qplib_ctx {scalar_t__ hwrm_intf_ver; } ;


 int BNXT_QPLIB_CMDQE_MAX_CNT_256 ;
 int BNXT_QPLIB_CMDQE_MAX_CNT_8192 ;
 int BNXT_QPLIB_CMDQE_UNITS ;
 int BNXT_QPLIB_CREQE_MAX_CNT ;
 int BNXT_QPLIB_CREQE_UNITS ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HWQ_TYPE_CTX ;
 scalar_t__ HWRM_VERSION_RCFW_CMDQ_DEPTH_CHECK ;
 int PAGE_SIZE ;
 scalar_t__ bnxt_qplib_alloc_init_hwq (struct pci_dev*,TYPE_1__*,int *,int*,int ,int ,int ,int ) ;
 int bnxt_qplib_cmdqe_page_size (int) ;
 int bnxt_qplib_free_rcfw_channel (struct bnxt_qplib_rcfw*) ;
 int bnxt_qplib_get_hwq_type (int ) ;
 int dev_err (int *,char*) ;
 void* kcalloc (int,int,int ) ;

int bnxt_qplib_alloc_rcfw_channel(struct pci_dev *pdev,
      struct bnxt_qplib_rcfw *rcfw,
      struct bnxt_qplib_ctx *ctx,
      int qp_tbl_sz)
{
 u8 hwq_type;

 rcfw->pdev = pdev;
 rcfw->creq.max_elements = BNXT_QPLIB_CREQE_MAX_CNT;
 hwq_type = bnxt_qplib_get_hwq_type(rcfw->res);
 if (bnxt_qplib_alloc_init_hwq(rcfw->pdev, &rcfw->creq, ((void*)0),
          &rcfw->creq.max_elements,
          BNXT_QPLIB_CREQE_UNITS,
          0, PAGE_SIZE, hwq_type)) {
  dev_err(&rcfw->pdev->dev,
   "HW channel CREQ allocation failed\n");
  goto fail;
 }
 if (ctx->hwrm_intf_ver < HWRM_VERSION_RCFW_CMDQ_DEPTH_CHECK)
  rcfw->cmdq_depth = BNXT_QPLIB_CMDQE_MAX_CNT_256;
 else
  rcfw->cmdq_depth = BNXT_QPLIB_CMDQE_MAX_CNT_8192;

 rcfw->cmdq.max_elements = rcfw->cmdq_depth;
 if (bnxt_qplib_alloc_init_hwq
   (rcfw->pdev, &rcfw->cmdq, ((void*)0),
    &rcfw->cmdq.max_elements,
    BNXT_QPLIB_CMDQE_UNITS, 0,
    bnxt_qplib_cmdqe_page_size(rcfw->cmdq_depth),
    HWQ_TYPE_CTX)) {
  dev_err(&rcfw->pdev->dev,
   "HW channel CMDQ allocation failed\n");
  goto fail;
 }

 rcfw->crsqe_tbl = kcalloc(rcfw->cmdq.max_elements,
      sizeof(*rcfw->crsqe_tbl), GFP_KERNEL);
 if (!rcfw->crsqe_tbl)
  goto fail;

 rcfw->qp_tbl_size = qp_tbl_sz;
 rcfw->qp_tbl = kcalloc(qp_tbl_sz, sizeof(struct bnxt_qplib_qp_node),
          GFP_KERNEL);
 if (!rcfw->qp_tbl)
  goto fail;

 return 0;

fail:
 bnxt_qplib_free_rcfw_channel(rcfw);
 return -ENOMEM;
}
