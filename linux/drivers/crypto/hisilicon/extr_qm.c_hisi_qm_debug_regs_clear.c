
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_dfx_registers {scalar_t__ reg_offset; } ;
struct hisi_qm {scalar_t__ io_base; } ;


 int CNT_CYC_REGS_NUM ;
 scalar_t__ QM_DFX_CNT_CLR_CE ;
 scalar_t__ QM_DFX_CQE_CNT_VF_CQN ;
 scalar_t__ QM_DFX_SQE_CNT_VF_SQN ;
 struct qm_dfx_registers* qm_dfx_regs ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void hisi_qm_debug_regs_clear(struct hisi_qm *qm)
{
 struct qm_dfx_registers *regs;
 int i;


 writel(0x0, qm->io_base + QM_DFX_SQE_CNT_VF_SQN);
 writel(0x0, qm->io_base + QM_DFX_CQE_CNT_VF_CQN);





 writel(0x1, qm->io_base + QM_DFX_CNT_CLR_CE);

 regs = qm_dfx_regs;
 for (i = 0; i < CNT_CYC_REGS_NUM; i++) {
  readl(qm->io_base + regs->reg_offset);
  regs++;
 }

 writel(0x0, qm->io_base + QM_DFX_CNT_CLR_CE);
}
