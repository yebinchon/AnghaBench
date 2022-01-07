
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int force_aperture; scalar_t__ aperture_end; int aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct TYPE_4__ {scalar_t__ iovmm_end; int iovmm_base; } ;


 int GFP_KERNEL ;
 unsigned int IOMMU_DOMAIN_UNMANAGED ;
 TYPE_2__* gart_handle ;
 struct iommu_domain* kzalloc (int,int ) ;

__attribute__((used)) static struct iommu_domain *gart_iommu_domain_alloc(unsigned type)
{
 struct iommu_domain *domain;

 if (type != IOMMU_DOMAIN_UNMANAGED)
  return ((void*)0);

 domain = kzalloc(sizeof(*domain), GFP_KERNEL);
 if (domain) {
  domain->geometry.aperture_start = gart_handle->iovmm_base;
  domain->geometry.aperture_end = gart_handle->iovmm_end - 1;
  domain->geometry.force_aperture = 1;
 }

 return domain;
}
