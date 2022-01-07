
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ls_scfg_msir {scalar_t__ gic_irq; int index; struct ls_scfg_msi* msi_data; } ;
struct ls_scfg_msi {int used; TYPE_1__* cfg; } ;
struct TYPE_2__ {int msir_irqs; int ibs_shift; } ;


 int bitmap_set (int ,int,int) ;
 int irq_set_chained_handler_and_data (scalar_t__,int *,int *) ;

__attribute__((used)) static int ls_scfg_msi_teardown_hwirq(struct ls_scfg_msir *msir)
{
 struct ls_scfg_msi *msi_data = msir->msi_data;
 int i, hwirq;

 if (msir->gic_irq > 0)
  irq_set_chained_handler_and_data(msir->gic_irq, ((void*)0), ((void*)0));

 for (i = 0; i < msi_data->cfg->msir_irqs; i++) {
  hwirq = i << msi_data->cfg->ibs_shift | msir->index;
  bitmap_set(msi_data->used, hwirq, 1);
 }

 return 0;
}
