
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iommu_domain {int dummy; } ;
struct viommu_domain {struct iommu_domain domain; int mappings; int mappings_lock; int mutex; } ;


 int GFP_KERNEL ;
 unsigned int IOMMU_DOMAIN_DMA ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 int RB_ROOT_CACHED ;
 scalar_t__ iommu_get_dma_cookie (struct iommu_domain*) ;
 int kfree (struct viommu_domain*) ;
 struct viommu_domain* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iommu_domain *viommu_domain_alloc(unsigned type)
{
 struct viommu_domain *vdomain;

 if (type != IOMMU_DOMAIN_UNMANAGED && type != IOMMU_DOMAIN_DMA)
  return ((void*)0);

 vdomain = kzalloc(sizeof(*vdomain), GFP_KERNEL);
 if (!vdomain)
  return ((void*)0);

 mutex_init(&vdomain->mutex);
 spin_lock_init(&vdomain->mappings_lock);
 vdomain->mappings = RB_ROOT_CACHED;

 if (type == IOMMU_DOMAIN_DMA &&
     iommu_get_dma_cookie(&vdomain->domain)) {
  kfree(vdomain);
  return ((void*)0);
 }

 return &vdomain->domain;
}
