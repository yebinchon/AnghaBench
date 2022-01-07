
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_ctx {int asid; } ;
struct iommu_fwspec {unsigned int num_ids; int * ids; } ;


 int ARM_SMMU_CB_S1_TLBIASID ;
 int iommu_writel (struct qcom_iommu_ctx*,int ,int ) ;
 int qcom_iommu_tlb_sync (void*) ;
 struct qcom_iommu_ctx* to_ctx (struct iommu_fwspec*,int ) ;

__attribute__((used)) static void qcom_iommu_tlb_inv_context(void *cookie)
{
 struct iommu_fwspec *fwspec = cookie;
 unsigned i;

 for (i = 0; i < fwspec->num_ids; i++) {
  struct qcom_iommu_ctx *ctx = to_ctx(fwspec, fwspec->ids[i]);
  iommu_writel(ctx, ARM_SMMU_CB_S1_TLBIASID, ctx->asid);
 }

 qcom_iommu_tlb_sync(cookie);
}
