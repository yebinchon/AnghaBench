
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_data {int irq; } ;
struct intel_iommu {int reg; int register_lock; } ;


 int dmar_msi_reg (struct intel_iommu*,int ) ;
 struct intel_iommu* irq_data_get_irq_handler_data (struct irq_data*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int readl (int) ;
 int writel (int ,int) ;

void dmar_msi_unmask(struct irq_data *data)
{
 struct intel_iommu *iommu = irq_data_get_irq_handler_data(data);
 int reg = dmar_msi_reg(iommu, data->irq);
 unsigned long flag;


 raw_spin_lock_irqsave(&iommu->register_lock, flag);
 writel(0, iommu->reg + reg);

 readl(iommu->reg + reg);
 raw_spin_unlock_irqrestore(&iommu->register_lock, flag);
}
