
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int aperture_end; int force_aperture; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct tegra_smmu_as {int attr; struct iommu_domain domain; int pd; struct tegra_smmu_as* count; void* pts; } ;


 int GFP_KERNEL ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 int SMMU_NUM_PDE ;
 int SMMU_PD_NONSECURE ;
 int SMMU_PD_READABLE ;
 int SMMU_PD_WRITABLE ;
 int __GFP_DMA ;
 int __GFP_ZERO ;
 int __free_page (int ) ;
 int alloc_page (int) ;
 void* kcalloc (int ,int,int) ;
 int kfree (struct tegra_smmu_as*) ;
 struct tegra_smmu_as* kzalloc (int,int) ;

__attribute__((used)) static struct iommu_domain *tegra_smmu_domain_alloc(unsigned type)
{
 struct tegra_smmu_as *as;

 if (type != IOMMU_DOMAIN_UNMANAGED)
  return ((void*)0);

 as = kzalloc(sizeof(*as), GFP_KERNEL);
 if (!as)
  return ((void*)0);

 as->attr = SMMU_PD_READABLE | SMMU_PD_WRITABLE | SMMU_PD_NONSECURE;

 as->pd = alloc_page(GFP_KERNEL | __GFP_DMA | __GFP_ZERO);
 if (!as->pd) {
  kfree(as);
  return ((void*)0);
 }

 as->count = kcalloc(SMMU_NUM_PDE, sizeof(u32), GFP_KERNEL);
 if (!as->count) {
  __free_page(as->pd);
  kfree(as);
  return ((void*)0);
 }

 as->pts = kcalloc(SMMU_NUM_PDE, sizeof(*as->pts), GFP_KERNEL);
 if (!as->pts) {
  kfree(as->count);
  __free_page(as->pd);
  kfree(as);
  return ((void*)0);
 }


 as->domain.geometry.aperture_start = 0;
 as->domain.geometry.aperture_end = 0xffffffff;
 as->domain.geometry.force_aperture = 1;

 return &as->domain;
}
