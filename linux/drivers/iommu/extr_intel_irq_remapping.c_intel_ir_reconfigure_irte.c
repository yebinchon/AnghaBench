
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irte {int dest_id; int vector; } ;
struct irq_data {struct intel_ir_data* chip_data; } ;
struct irq_cfg {int dest_apicid; int vector; } ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct intel_ir_data {TYPE_1__ irq_2_iommu; struct irte irte_entry; } ;


 scalar_t__ IRQ_REMAPPING ;
 int IRTE_DEST (int ) ;
 struct irq_cfg* irqd_cfg (struct irq_data*) ;
 int modify_irte (TYPE_1__*,struct irte*) ;

__attribute__((used)) static void intel_ir_reconfigure_irte(struct irq_data *irqd, bool force)
{
 struct intel_ir_data *ir_data = irqd->chip_data;
 struct irte *irte = &ir_data->irte_entry;
 struct irq_cfg *cfg = irqd_cfg(irqd);





 irte->vector = cfg->vector;
 irte->dest_id = IRTE_DEST(cfg->dest_apicid);


 if (force || ir_data->irq_2_iommu.mode == IRQ_REMAPPING)
  modify_irte(&ir_data->irq_2_iommu, irte);
}
