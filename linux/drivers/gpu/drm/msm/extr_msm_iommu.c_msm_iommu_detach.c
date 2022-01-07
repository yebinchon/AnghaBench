
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_mmu {int dev; } ;
struct msm_iommu {int domain; } ;


 int iommu_detach_device (int ,int ) ;
 struct msm_iommu* to_msm_iommu (struct msm_mmu*) ;

__attribute__((used)) static void msm_iommu_detach(struct msm_mmu *mmu, const char * const *names,
        int cnt)
{
 struct msm_iommu *iommu = to_msm_iommu(mmu);

 iommu_detach_device(iommu->domain, mmu->dev);
}
