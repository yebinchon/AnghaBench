
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu_domain {int dummy; } ;
struct TYPE_2__ {struct iommu_domain* active_domain; } ;


 int WARN_ON (int) ;
 TYPE_1__* gart_handle ;
 int kfree (struct iommu_domain*) ;

__attribute__((used)) static void gart_iommu_domain_free(struct iommu_domain *domain)
{
 WARN_ON(gart_handle->active_domain == domain);
 kfree(domain);
}
