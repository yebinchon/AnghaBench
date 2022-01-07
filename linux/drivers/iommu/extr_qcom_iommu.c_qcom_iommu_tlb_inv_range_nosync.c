
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_ctx {unsigned long asid; } ;
struct iommu_fwspec {unsigned int num_ids; int * ids; } ;


 unsigned int ARM_SMMU_CB_S1_TLBIVA ;
 unsigned int ARM_SMMU_CB_S1_TLBIVAL ;
 int iommu_writel (struct qcom_iommu_ctx*,unsigned int,unsigned long) ;
 struct qcom_iommu_ctx* to_ctx (struct iommu_fwspec*,int ) ;

__attribute__((used)) static void qcom_iommu_tlb_inv_range_nosync(unsigned long iova, size_t size,
         size_t granule, bool leaf, void *cookie)
{
 struct iommu_fwspec *fwspec = cookie;
 unsigned i, reg;

 reg = leaf ? ARM_SMMU_CB_S1_TLBIVAL : ARM_SMMU_CB_S1_TLBIVA;

 for (i = 0; i < fwspec->num_ids; i++) {
  struct qcom_iommu_ctx *ctx = to_ctx(fwspec, fwspec->ids[i]);
  size_t s = size;

  iova = (iova >> 12) << 12;
  iova |= ctx->asid;
  do {
   iommu_writel(ctx, reg, iova);
   iova += granule;
  } while (s -= granule);
 }
}
