
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int irq; int pr_irq; } ;


 int BUG () ;
 int DMAR_FECTL_REG ;
 int DMAR_PECTL_REG ;

__attribute__((used)) static inline int dmar_msi_reg(struct intel_iommu *iommu, int irq)
{
 if (iommu->irq == irq)
  return DMAR_FECTL_REG;
 else if (iommu->pr_irq == irq)
  return DMAR_PECTL_REG;
 else
  BUG();
}
