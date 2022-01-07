
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long long aperture_end; int force_aperture; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct omap_iommu_domain {struct iommu_domain domain; int lock; } ;


 int GFP_KERNEL ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 struct omap_iommu_domain* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct iommu_domain *omap_iommu_domain_alloc(unsigned type)
{
 struct omap_iommu_domain *omap_domain;

 if (type != IOMMU_DOMAIN_UNMANAGED)
  return ((void*)0);

 omap_domain = kzalloc(sizeof(*omap_domain), GFP_KERNEL);
 if (!omap_domain)
  return ((void*)0);

 spin_lock_init(&omap_domain->lock);

 omap_domain->domain.geometry.aperture_start = 0;
 omap_domain->domain.geometry.aperture_end = (1ULL << 32) - 1;
 omap_domain->domain.geometry.force_aperture = 1;

 return &omap_domain->domain;
}
