
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct viommu_domain {int id; TYPE_1__* viommu; } ;
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int domain_ids; } ;


 int ida_free (int *,int ) ;
 int iommu_put_dma_cookie (struct iommu_domain*) ;
 int kfree (struct viommu_domain*) ;
 struct viommu_domain* to_viommu_domain (struct iommu_domain*) ;
 int viommu_del_mappings (struct viommu_domain*,int ,int ) ;

__attribute__((used)) static void viommu_domain_free(struct iommu_domain *domain)
{
 struct viommu_domain *vdomain = to_viommu_domain(domain);

 iommu_put_dma_cookie(domain);


 viommu_del_mappings(vdomain, 0, 0);

 if (vdomain->viommu)
  ida_free(&vdomain->viommu->domain_ids, vdomain->id);

 kfree(vdomain);
}
