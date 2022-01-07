
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ls_scfg_msir {int index; int gic_irq; int bit_start; int bit_end; int srs; scalar_t__ reg; struct ls_scfg_msi* msi_data; } ;
struct ls_scfg_msi {int used; TYPE_1__* cfg; scalar_t__ regs; struct ls_scfg_msir* msir; int pdev; } ;
struct TYPE_2__ {int msir_irqs; int ibs_shift; scalar_t__ msir_base; } ;


 int ENODEV ;
 int MSI_LS1043V1_1_IRQS_PER_MSIR ;
 int bitmap_clear (int ,int,int) ;
 int get_cpu_mask (int) ;
 int irq_set_affinity (int,int ) ;
 int irq_set_chained_handler_and_data (int,int ,struct ls_scfg_msir*) ;
 int ls_scfg_msi_irq_handler ;
 scalar_t__ msi_affinity_flag ;
 int platform_get_irq (int ,int) ;

__attribute__((used)) static int ls_scfg_msi_setup_hwirq(struct ls_scfg_msi *msi_data, int index)
{
 struct ls_scfg_msir *msir;
 int virq, i, hwirq;

 virq = platform_get_irq(msi_data->pdev, index);
 if (virq <= 0)
  return -ENODEV;

 msir = &msi_data->msir[index];
 msir->index = index;
 msir->msi_data = msi_data;
 msir->gic_irq = virq;
 msir->reg = msi_data->regs + msi_data->cfg->msir_base + 4 * index;

 if (msi_data->cfg->msir_irqs == MSI_LS1043V1_1_IRQS_PER_MSIR) {
  msir->bit_start = 32 - ((msir->index + 1) *
      MSI_LS1043V1_1_IRQS_PER_MSIR);
  msir->bit_end = msir->bit_start +
    MSI_LS1043V1_1_IRQS_PER_MSIR - 1;
 } else {
  msir->bit_start = 0;
  msir->bit_end = msi_data->cfg->msir_irqs - 1;
 }

 irq_set_chained_handler_and_data(msir->gic_irq,
      ls_scfg_msi_irq_handler,
      msir);

 if (msi_affinity_flag) {

  irq_set_affinity(msir->gic_irq, get_cpu_mask(index));
  msir->srs = 0;
 } else
  msir->srs = index;


 if (!msi_affinity_flag || msir->index == 0) {
  for (i = 0; i < msi_data->cfg->msir_irqs; i++) {
   hwirq = i << msi_data->cfg->ibs_shift | msir->index;
   bitmap_clear(msi_data->used, hwirq, 1);
  }
 }

 return 0;
}
