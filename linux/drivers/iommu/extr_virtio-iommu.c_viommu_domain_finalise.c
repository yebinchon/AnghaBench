
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viommu_domain {unsigned int id; int map_flags; struct viommu_dev* viommu; } ;
struct viommu_dev {int last_domain; int first_domain; int domain_ids; int geometry; int pgsize_bitmap; int map_flags; } ;
struct iommu_domain {int geometry; int pgsize_bitmap; } ;


 int GFP_KERNEL ;
 int ida_alloc_range (int *,int ,int ,int ) ;
 struct viommu_domain* to_viommu_domain (struct iommu_domain*) ;

__attribute__((used)) static int viommu_domain_finalise(struct viommu_dev *viommu,
      struct iommu_domain *domain)
{
 int ret;
 struct viommu_domain *vdomain = to_viommu_domain(domain);

 vdomain->viommu = viommu;
 vdomain->map_flags = viommu->map_flags;

 domain->pgsize_bitmap = viommu->pgsize_bitmap;
 domain->geometry = viommu->geometry;

 ret = ida_alloc_range(&viommu->domain_ids, viommu->first_domain,
         viommu->last_domain, GFP_KERNEL);
 if (ret >= 0)
  vdomain->id = (unsigned int)ret;

 return ret > 0 ? 0 : ret;
}
