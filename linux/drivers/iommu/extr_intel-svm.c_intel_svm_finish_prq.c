
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_iommu {int * prq; scalar_t__ pr_irq; scalar_t__ reg; } ;


 scalar_t__ DMAR_PQA_REG ;
 scalar_t__ DMAR_PQH_REG ;
 scalar_t__ DMAR_PQT_REG ;
 int PRQ_ORDER ;
 int dmar_free_hwirq (scalar_t__) ;
 int dmar_writeq (scalar_t__,unsigned long long) ;
 int free_irq (scalar_t__,struct intel_iommu*) ;
 int free_pages (unsigned long,int ) ;

int intel_svm_finish_prq(struct intel_iommu *iommu)
{
 dmar_writeq(iommu->reg + DMAR_PQH_REG, 0ULL);
 dmar_writeq(iommu->reg + DMAR_PQT_REG, 0ULL);
 dmar_writeq(iommu->reg + DMAR_PQA_REG, 0ULL);

 if (iommu->pr_irq) {
  free_irq(iommu->pr_irq, iommu);
  dmar_free_hwirq(iommu->pr_irq);
  iommu->pr_irq = 0;
 }

 free_pages((unsigned long)iommu->prq, PRQ_ORDER);
 iommu->prq = ((void*)0);

 return 0;
}
