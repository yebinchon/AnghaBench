
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_alloc_info {int type; int msi_dev; } ;
struct intel_iommu {struct irq_domain* ir_msi_domain; } ;




 struct intel_iommu* map_dev_to_ir (int ) ;

__attribute__((used)) static struct irq_domain *intel_get_irq_domain(struct irq_alloc_info *info)
{
 struct intel_iommu *iommu;

 if (!info)
  return ((void*)0);

 switch (info->type) {
 case 129:
 case 128:
  iommu = map_dev_to_ir(info->msi_dev);
  if (iommu)
   return iommu->ir_msi_domain;
  break;
 default:
  break;
 }

 return ((void*)0);
}
