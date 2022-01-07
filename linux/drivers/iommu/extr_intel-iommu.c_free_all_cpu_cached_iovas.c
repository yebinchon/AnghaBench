
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_iommu {int cap; } ;
struct dmar_domain {int iovad; } ;


 int cap_ndoms (int ) ;
 int free_cpu_cached_iovas (unsigned int,int *) ;
 struct intel_iommu** g_iommus ;
 int g_num_of_iommus ;
 struct dmar_domain* get_iommu_domain (struct intel_iommu*,int ) ;

__attribute__((used)) static void free_all_cpu_cached_iovas(unsigned int cpu)
{
 int i;

 for (i = 0; i < g_num_of_iommus; i++) {
  struct intel_iommu *iommu = g_iommus[i];
  struct dmar_domain *domain;
  int did;

  if (!iommu)
   continue;

  for (did = 0; did < cap_ndoms(iommu->cap); did++) {
   domain = get_iommu_domain(iommu, (u16)did);

   if (!domain)
    continue;
   free_cpu_cached_iovas(cpu, &domain->iovad);
  }
 }
}
