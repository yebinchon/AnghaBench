
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int * dev_iommu; } ;


 int amd_iommu_get_num_iommus () ;
 int * amd_iommus ;
 int iommu_completion_wait (int ) ;

__attribute__((used)) static void domain_flush_complete(struct protection_domain *domain)
{
 int i;

 for (i = 0; i < amd_iommu_get_num_iommus(); ++i) {
  if (domain && !domain->dev_iommu[i])
   continue;





  iommu_completion_wait(amd_iommus[i]);
 }
}
