
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msi_msg {int address_hi; int address_lo; int data; } ;
struct intel_iommu {int reg; int register_lock; } ;


 int dmar_msi_reg (struct intel_iommu*,int) ;
 struct intel_iommu* irq_get_handler_data (int) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int) ;

void dmar_msi_write(int irq, struct msi_msg *msg)
{
 struct intel_iommu *iommu = irq_get_handler_data(irq);
 int reg = dmar_msi_reg(iommu, irq);
 unsigned long flag;

 raw_spin_lock_irqsave(&iommu->register_lock, flag);
 writel(msg->data, iommu->reg + reg + 4);
 writel(msg->address_lo, iommu->reg + reg + 8);
 writel(msg->address_hi, iommu->reg + reg + 12);
 raw_spin_unlock_irqrestore(&iommu->register_lock, flag);
}
