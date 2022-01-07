
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_qm {scalar_t__ io_base; } ;
struct hisi_zip {struct hisi_qm qm; } ;


 scalar_t__ HZIP_SOFT_CTRL_CNT_CLR_CE ;
 scalar_t__ QM_DFX_DB_CNT_VF ;
 scalar_t__ QM_DFX_MB_CNT_VF ;
 int hisi_qm_debug_regs_clear (struct hisi_qm*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void hisi_zip_debug_regs_clear(struct hisi_zip *hisi_zip)
{
 struct hisi_qm *qm = &hisi_zip->qm;

 writel(0x0, qm->io_base + QM_DFX_MB_CNT_VF);
 writel(0x0, qm->io_base + QM_DFX_DB_CNT_VF);
 writel(0x0, qm->io_base + HZIP_SOFT_CTRL_CNT_CLR_CE);

 hisi_qm_debug_regs_clear(qm);
}
