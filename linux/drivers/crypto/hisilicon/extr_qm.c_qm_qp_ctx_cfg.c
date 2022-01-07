
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qm_sqc {int cq_num; int dw6; void* w8; int dw3; int w13; } ;
struct qm_cqc {int cq_num; int dw6; void* w8; int dw3; int w13; } ;
struct hisi_qp {int cqe_dma; int alg_type; int sqe_dma; struct hisi_qm* qm; } ;
struct hisi_qm {int ver; int sqe_size; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef enum qm_hw_ver { ____Placeholder_qm_hw_ver } qm_hw_ver ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_QC_COMMON (struct qm_sqc*,int ,int) ;
 int QM_CQ_FLAG_SHIFT ;
 int QM_CQ_PHASE_SHIFT ;
 int QM_HW_V1 ;
 int QM_HW_V2 ;
 int QM_MB_CMD_CQC ;
 int QM_MB_CMD_SQC ;
 int QM_MK_CQC_DW3_V1 (int ,int ,int ,int) ;
 int QM_MK_CQC_DW3_V2 (int) ;
 int QM_MK_SQC_DW3_V1 (int ,int ,int ,int ) ;
 int QM_MK_SQC_DW3_V2 (int ) ;
 int QM_MK_SQC_W13 (int ,int,int ) ;
 void* QM_Q_DEPTH ;
 int dma_map_single (struct device*,struct qm_sqc*,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int kfree (struct qm_sqc*) ;
 struct qm_sqc* kzalloc (int,int ) ;
 int qm_init_qp_status (struct hisi_qp*) ;
 int qm_mb (struct hisi_qm*,int ,int ,int,int ) ;

__attribute__((used)) static int qm_qp_ctx_cfg(struct hisi_qp *qp, int qp_id, int pasid)
{
 struct hisi_qm *qm = qp->qm;
 struct device *dev = &qm->pdev->dev;
 enum qm_hw_ver ver = qm->ver;
 struct qm_sqc *sqc;
 struct qm_cqc *cqc;
 dma_addr_t sqc_dma;
 dma_addr_t cqc_dma;
 int ret;

 qm_init_qp_status(qp);

 sqc = kzalloc(sizeof(struct qm_sqc), GFP_KERNEL);
 if (!sqc)
  return -ENOMEM;
 sqc_dma = dma_map_single(dev, sqc, sizeof(struct qm_sqc),
     DMA_TO_DEVICE);
 if (dma_mapping_error(dev, sqc_dma)) {
  kfree(sqc);
  return -ENOMEM;
 }

 INIT_QC_COMMON(sqc, qp->sqe_dma, pasid);
 if (ver == QM_HW_V1) {
  sqc->dw3 = QM_MK_SQC_DW3_V1(0, 0, 0, qm->sqe_size);
  sqc->w8 = QM_Q_DEPTH - 1;
 } else if (ver == QM_HW_V2) {
  sqc->dw3 = QM_MK_SQC_DW3_V2(qm->sqe_size);
  sqc->w8 = 0;
 }
 sqc->cq_num = qp_id;
 sqc->w13 = QM_MK_SQC_W13(0, 1, qp->alg_type);

 ret = qm_mb(qm, QM_MB_CMD_SQC, sqc_dma, qp_id, 0);
 dma_unmap_single(dev, sqc_dma, sizeof(struct qm_sqc), DMA_TO_DEVICE);
 kfree(sqc);
 if (ret)
  return ret;

 cqc = kzalloc(sizeof(struct qm_cqc), GFP_KERNEL);
 if (!cqc)
  return -ENOMEM;
 cqc_dma = dma_map_single(dev, cqc, sizeof(struct qm_cqc),
     DMA_TO_DEVICE);
 if (dma_mapping_error(dev, cqc_dma)) {
  kfree(cqc);
  return -ENOMEM;
 }

 INIT_QC_COMMON(cqc, qp->cqe_dma, pasid);
 if (ver == QM_HW_V1) {
  cqc->dw3 = QM_MK_CQC_DW3_V1(0, 0, 0, 4);
  cqc->w8 = QM_Q_DEPTH - 1;
 } else if (ver == QM_HW_V2) {
  cqc->dw3 = QM_MK_CQC_DW3_V2(4);
  cqc->w8 = 0;
 }
 cqc->dw6 = 1 << QM_CQ_PHASE_SHIFT | 1 << QM_CQ_FLAG_SHIFT;

 ret = qm_mb(qm, QM_MB_CMD_CQC, cqc_dma, qp_id, 0);
 dma_unmap_single(dev, cqc_dma, sizeof(struct qm_cqc), DMA_TO_DEVICE);
 kfree(cqc);

 return ret;
}
