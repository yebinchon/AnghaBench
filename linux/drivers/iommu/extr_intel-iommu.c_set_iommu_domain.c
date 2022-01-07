
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_iommu {struct dmar_domain*** domains; } ;
struct dmar_domain {int dummy; } ;


 int GFP_ATOMIC ;
 scalar_t__ WARN_ON (int) ;
 struct dmar_domain** kzalloc (size_t,int ) ;

__attribute__((used)) static void set_iommu_domain(struct intel_iommu *iommu, u16 did,
        struct dmar_domain *domain)
{
 struct dmar_domain **domains;
 int idx = did >> 8;

 if (!iommu->domains[idx]) {
  size_t size = 256 * sizeof(struct dmar_domain *);
  iommu->domains[idx] = kzalloc(size, GFP_ATOMIC);
 }

 domains = iommu->domains[idx];
 if (WARN_ON(!domains))
  return;
 else
  domains[did & 0xff] = domain;
}
