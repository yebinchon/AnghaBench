
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef scalar_t__ u32 ;
struct hisi_qm {scalar_t__ io_base; int ver; } ;
typedef enum vft_type { ____Placeholder_vft_type } vft_type ;



 int QM_CQC_VFT_BUF_SIZE ;
 int QM_CQC_VFT_INDEX_NUMBER ;
 int QM_CQC_VFT_SQC_SIZE ;
 int QM_CQC_VFT_VALID ;



 int QM_SQC_VFT_BUF_SIZE ;
 int QM_SQC_VFT_INDEX_NUMBER ;
 int QM_SQC_VFT_SQC_SIZE ;
 int QM_SQC_VFT_SQN_SHIFT ;
 int QM_SQC_VFT_START_SQN_SHIFT ;
 int QM_SQC_VFT_VALID ;
 scalar_t__ QM_VFT_CFG_DATA_H ;
 scalar_t__ QM_VFT_CFG_DATA_L ;

 int lower_32_bits (int) ;
 int upper_32_bits (int) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void qm_vft_data_cfg(struct hisi_qm *qm, enum vft_type type, u32 base,
       u32 number)
{
 u64 tmp = 0;

 if (number > 0) {
  switch (type) {
  case 128:
   switch (qm->ver) {
   case 130:
    tmp = QM_SQC_VFT_BUF_SIZE |
          QM_SQC_VFT_SQC_SIZE |
          QM_SQC_VFT_INDEX_NUMBER |
          QM_SQC_VFT_VALID |
          (u64)base << QM_SQC_VFT_START_SQN_SHIFT;
    break;
   case 129:
    tmp = (u64)base << QM_SQC_VFT_START_SQN_SHIFT |
          QM_SQC_VFT_VALID |
          (u64)(number - 1) << QM_SQC_VFT_SQN_SHIFT;
    break;
   case 131:
    break;
   }
   break;
  case 132:
   switch (qm->ver) {
   case 130:
    tmp = QM_CQC_VFT_BUF_SIZE |
          QM_CQC_VFT_SQC_SIZE |
          QM_CQC_VFT_INDEX_NUMBER |
          QM_CQC_VFT_VALID;
    break;
   case 129:
    tmp = QM_CQC_VFT_VALID;
    break;
   case 131:
    break;
   }
   break;
  }
 }

 writel(lower_32_bits(tmp), qm->io_base + QM_VFT_CFG_DATA_L);
 writel(upper_32_bits(tmp), qm->io_base + QM_VFT_CFG_DATA_H);
}
