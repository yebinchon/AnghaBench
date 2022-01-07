
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hisi_qm {scalar_t__ io_base; } ;
typedef enum vft_type { ____Placeholder_vft_type } vft_type ;


 unsigned int BIT (int ) ;
 scalar_t__ QM_VFT_CFG ;
 scalar_t__ QM_VFT_CFG_OP_ENABLE ;
 scalar_t__ QM_VFT_CFG_OP_WR ;
 scalar_t__ QM_VFT_CFG_RDY ;
 scalar_t__ QM_VFT_CFG_TYPE ;
 int qm_vft_data_cfg (struct hisi_qm*,int,int,int) ;
 int readl_relaxed_poll_timeout (scalar_t__,unsigned int,unsigned int,int,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int qm_set_vft_common(struct hisi_qm *qm, enum vft_type type,
        u32 fun_num, u32 base, u32 number)
{
 unsigned int val;
 int ret;

 ret = readl_relaxed_poll_timeout(qm->io_base + QM_VFT_CFG_RDY, val,
      val & BIT(0), 10, 1000);
 if (ret)
  return ret;

 writel(0x0, qm->io_base + QM_VFT_CFG_OP_WR);
 writel(type, qm->io_base + QM_VFT_CFG_TYPE);
 writel(fun_num, qm->io_base + QM_VFT_CFG);

 qm_vft_data_cfg(qm, type, base, number);

 writel(0x0, qm->io_base + QM_VFT_CFG_RDY);
 writel(0x1, qm->io_base + QM_VFT_CFG_OP_ENABLE);

 return readl_relaxed_poll_timeout(qm->io_base + QM_VFT_CFG_RDY, val,
       val & BIT(0), 10, 1000);
}
