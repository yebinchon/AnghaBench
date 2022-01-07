
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {scalar_t__ type; } ;
struct arm_smmu_cfg {size_t cbndx; size_t irptndx; } ;
struct arm_smmu_domain {int pgtbl_ops; struct arm_smmu_cfg cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int* irqs; size_t num_global_irqs; int context_map; int dev; TYPE_1__* cbs; } ;
struct TYPE_2__ {int * cfg; } ;


 size_t INVALID_IRPTNDX ;
 scalar_t__ IOMMU_DOMAIN_IDENTITY ;
 int __arm_smmu_free_bitmap (int ,size_t) ;
 int arm_smmu_rpm_get (struct arm_smmu_device*) ;
 int arm_smmu_rpm_put (struct arm_smmu_device*) ;
 int arm_smmu_write_context_bank (struct arm_smmu_device*,size_t) ;
 int devm_free_irq (int ,int,struct iommu_domain*) ;
 int free_io_pgtable_ops (int ) ;
 struct arm_smmu_domain* to_smmu_domain (struct iommu_domain*) ;

__attribute__((used)) static void arm_smmu_destroy_domain_context(struct iommu_domain *domain)
{
 struct arm_smmu_domain *smmu_domain = to_smmu_domain(domain);
 struct arm_smmu_device *smmu = smmu_domain->smmu;
 struct arm_smmu_cfg *cfg = &smmu_domain->cfg;
 int ret, irq;

 if (!smmu || domain->type == IOMMU_DOMAIN_IDENTITY)
  return;

 ret = arm_smmu_rpm_get(smmu);
 if (ret < 0)
  return;





 smmu->cbs[cfg->cbndx].cfg = ((void*)0);
 arm_smmu_write_context_bank(smmu, cfg->cbndx);

 if (cfg->irptndx != INVALID_IRPTNDX) {
  irq = smmu->irqs[smmu->num_global_irqs + cfg->irptndx];
  devm_free_irq(smmu->dev, irq, domain);
 }

 free_io_pgtable_ops(smmu_domain->pgtbl_ops);
 __arm_smmu_free_bitmap(smmu->context_map, cfg->cbndx);

 arm_smmu_rpm_put(smmu);
}
