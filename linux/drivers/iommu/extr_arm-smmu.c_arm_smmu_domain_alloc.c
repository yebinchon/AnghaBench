
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct arm_smmu_domain {struct iommu_domain domain; int cb_lock; int init_mutex; } ;


 int GFP_KERNEL ;
 unsigned int IOMMU_DOMAIN_DMA ;
 unsigned int IOMMU_DOMAIN_IDENTITY ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 scalar_t__ iommu_get_dma_cookie (struct iommu_domain*) ;
 int kfree (struct arm_smmu_domain*) ;
 struct arm_smmu_domain* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ using_legacy_binding ;

__attribute__((used)) static struct iommu_domain *arm_smmu_domain_alloc(unsigned type)
{
 struct arm_smmu_domain *smmu_domain;

 if (type != IOMMU_DOMAIN_UNMANAGED &&
     type != IOMMU_DOMAIN_DMA &&
     type != IOMMU_DOMAIN_IDENTITY)
  return ((void*)0);





 smmu_domain = kzalloc(sizeof(*smmu_domain), GFP_KERNEL);
 if (!smmu_domain)
  return ((void*)0);

 if (type == IOMMU_DOMAIN_DMA && (using_legacy_binding ||
     iommu_get_dma_cookie(&smmu_domain->domain))) {
  kfree(smmu_domain);
  return ((void*)0);
 }

 mutex_init(&smmu_domain->init_mutex);
 spin_lock_init(&smmu_domain->cb_lock);

 return &smmu_domain->domain;
}
