
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qm_eqc {int dw6; void* base_h; void* base_l; int dw3; } ;
struct qm_aeqc {int dw6; void* base_h; void* base_l; int dw3; } ;
struct hisi_qm {scalar_t__ ver; int aeqe_dma; int eqe_dma; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device dev; } ;


 int DMA_TO_DEVICE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int QM_EQC_PHASE_SHIFT ;
 int QM_EQE_AEQE_SIZE ;
 scalar_t__ QM_HW_V1 ;
 int QM_MB_CMD_AEQC ;
 int QM_MB_CMD_EQC ;
 int QM_Q_DEPTH ;
 int dma_map_single (struct device*,struct qm_eqc*,int,int ) ;
 scalar_t__ dma_mapping_error (struct device*,int ) ;
 int dma_unmap_single (struct device*,int ,int,int ) ;
 int kfree (struct qm_eqc*) ;
 struct qm_eqc* kzalloc (int,int ) ;
 void* lower_32_bits (int ) ;
 int qm_init_eq_aeq_status (struct hisi_qm*) ;
 int qm_mb (struct hisi_qm*,int ,int ,int ,int ) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static int qm_eq_ctx_cfg(struct hisi_qm *qm)
{
 struct device *dev = &qm->pdev->dev;
 struct qm_eqc *eqc;
 struct qm_aeqc *aeqc;
 dma_addr_t eqc_dma;
 dma_addr_t aeqc_dma;
 int ret;

 qm_init_eq_aeq_status(qm);

 eqc = kzalloc(sizeof(struct qm_eqc), GFP_KERNEL);
 if (!eqc)
  return -ENOMEM;
 eqc_dma = dma_map_single(dev, eqc, sizeof(struct qm_eqc),
     DMA_TO_DEVICE);
 if (dma_mapping_error(dev, eqc_dma)) {
  kfree(eqc);
  return -ENOMEM;
 }

 eqc->base_l = lower_32_bits(qm->eqe_dma);
 eqc->base_h = upper_32_bits(qm->eqe_dma);
 if (qm->ver == QM_HW_V1)
  eqc->dw3 = QM_EQE_AEQE_SIZE;
 eqc->dw6 = (QM_Q_DEPTH - 1) | (1 << QM_EQC_PHASE_SHIFT);
 ret = qm_mb(qm, QM_MB_CMD_EQC, eqc_dma, 0, 0);
 dma_unmap_single(dev, eqc_dma, sizeof(struct qm_eqc), DMA_TO_DEVICE);
 kfree(eqc);
 if (ret)
  return ret;

 aeqc = kzalloc(sizeof(struct qm_aeqc), GFP_KERNEL);
 if (!aeqc)
  return -ENOMEM;
 aeqc_dma = dma_map_single(dev, aeqc, sizeof(struct qm_aeqc),
      DMA_TO_DEVICE);
 if (dma_mapping_error(dev, aeqc_dma)) {
  kfree(aeqc);
  return -ENOMEM;
 }

 aeqc->base_l = lower_32_bits(qm->aeqe_dma);
 aeqc->base_h = upper_32_bits(qm->aeqe_dma);
 aeqc->dw6 = (QM_Q_DEPTH - 1) | (1 << QM_EQC_PHASE_SHIFT);

 ret = qm_mb(qm, QM_MB_CMD_AEQC, aeqc_dma, 0, 0);
 dma_unmap_single(dev, aeqc_dma, sizeof(struct qm_aeqc), DMA_TO_DEVICE);
 kfree(aeqc);

 return ret;
}
