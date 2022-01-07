
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_mmu {int dummy; } ;
struct msm_iommu {int domain; } ;


 int iommu_domain_free (int ) ;
 int kfree (struct msm_iommu*) ;
 struct msm_iommu* to_msm_iommu (struct msm_mmu*) ;

__attribute__((used)) static void msm_iommu_destroy(struct msm_mmu *mmu)
{
 struct msm_iommu *iommu = to_msm_iommu(mmu);
 iommu_domain_free(iommu->domain);
 kfree(iommu);
}
