
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sg_table {int nents; int sgl; } ;
struct msm_mmu {int dummy; } ;
struct msm_iommu {int domain; } ;


 int EINVAL ;
 int WARN_ON (int) ;
 size_t iommu_map_sg (int ,int ,int ,int ,int) ;
 struct msm_iommu* to_msm_iommu (struct msm_mmu*) ;

__attribute__((used)) static int msm_iommu_map(struct msm_mmu *mmu, uint64_t iova,
  struct sg_table *sgt, unsigned len, int prot)
{
 struct msm_iommu *iommu = to_msm_iommu(mmu);
 size_t ret;

 ret = iommu_map_sg(iommu->domain, iova, sgt->sgl, sgt->nents, prot);
 WARN_ON(!ret);

 return (ret == len) ? 0 : -EINVAL;
}
