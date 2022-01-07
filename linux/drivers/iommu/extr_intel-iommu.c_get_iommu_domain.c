
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_iommu {struct dmar_domain*** domains; } ;
struct dmar_domain {int dummy; } ;



__attribute__((used)) static struct dmar_domain* get_iommu_domain(struct intel_iommu *iommu, u16 did)
{
 struct dmar_domain **domains;
 int idx = did >> 8;

 domains = iommu->domains[idx];
 if (!domains)
  return ((void*)0);

 return domains[did & 0xff];
}
