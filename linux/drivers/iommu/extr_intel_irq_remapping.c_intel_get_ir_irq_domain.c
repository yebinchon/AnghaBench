
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;
struct irq_alloc_info {int type; int msi_dev; int hpet_id; int ioapic_id; } ;
struct intel_iommu {struct irq_domain* ir_domain; } ;


 int BUG_ON (int) ;




 struct intel_iommu* map_dev_to_ir (int ) ;
 struct intel_iommu* map_hpet_to_ir (int ) ;
 struct intel_iommu* map_ioapic_to_ir (int ) ;

__attribute__((used)) static struct irq_domain *intel_get_ir_irq_domain(struct irq_alloc_info *info)
{
 struct intel_iommu *iommu = ((void*)0);

 if (!info)
  return ((void*)0);

 switch (info->type) {
 case 130:
  iommu = map_ioapic_to_ir(info->ioapic_id);
  break;
 case 131:
  iommu = map_hpet_to_ir(info->hpet_id);
  break;
 case 129:
 case 128:
  iommu = map_dev_to_ir(info->msi_dev);
  break;
 default:
  BUG_ON(1);
  break;
 }

 return iommu ? iommu->ir_domain : ((void*)0);
}
