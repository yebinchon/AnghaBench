
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hisi_qm {scalar_t__ io_base; } ;


 scalar_t__ QM_MB_CMD_DATA_ADDR_H ;
 scalar_t__ QM_MB_CMD_DATA_ADDR_L ;
 int QM_MB_CMD_SQC_VFT_V2 ;
 int QM_SQC_VFT_BASE_MASK_V2 ;
 int QM_SQC_VFT_BASE_SHIFT_V2 ;
 int QM_SQC_VFT_NUM_MASK_v2 ;
 int QM_SQC_VFT_NUM_SHIFT_V2 ;
 int qm_mb (struct hisi_qm*,int ,int ,int ,int) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int qm_get_vft_v2(struct hisi_qm *qm, u32 *base, u32 *number)
{
 u64 sqc_vft;
 int ret;

 ret = qm_mb(qm, QM_MB_CMD_SQC_VFT_V2, 0, 0, 1);
 if (ret)
  return ret;

 sqc_vft = readl(qm->io_base + QM_MB_CMD_DATA_ADDR_L) |
    ((u64)readl(qm->io_base + QM_MB_CMD_DATA_ADDR_H) << 32);
 *base = QM_SQC_VFT_BASE_MASK_V2 & (sqc_vft >> QM_SQC_VFT_BASE_SHIFT_V2);
 *number = (QM_SQC_VFT_NUM_MASK_v2 &
     (sqc_vft >> QM_SQC_VFT_NUM_SHIFT_V2)) + 1;

 return 0;
}
