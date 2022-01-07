
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct msm_mmu {int dummy; } ;
struct msm_iommu {int domain; } ;


 int iommu_unmap (int ,int ,unsigned int) ;
 struct msm_iommu* to_msm_iommu (struct msm_mmu*) ;

__attribute__((used)) static int msm_iommu_unmap(struct msm_mmu *mmu, uint64_t iova, unsigned len)
{
 struct msm_iommu *iommu = to_msm_iommu(mmu);

 iommu_unmap(iommu->domain, iova, len);

 return 0;
}
