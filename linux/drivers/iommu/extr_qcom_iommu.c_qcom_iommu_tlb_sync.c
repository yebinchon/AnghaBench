
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_iommu_ctx {int dev; scalar_t__ base; } ;
struct iommu_fwspec {unsigned int num_ids; int * ids; } ;


 scalar_t__ ARM_SMMU_CB_TLBSTATUS ;
 int ARM_SMMU_CB_TLBSYNC ;
 int dev_err (int ,char*) ;
 int iommu_writel (struct qcom_iommu_ctx*,int ,int ) ;
 unsigned int readl_poll_timeout (scalar_t__,unsigned int,int,int ,int) ;
 struct qcom_iommu_ctx* to_ctx (struct iommu_fwspec*,int ) ;

__attribute__((used)) static void qcom_iommu_tlb_sync(void *cookie)
{
 struct iommu_fwspec *fwspec = cookie;
 unsigned i;

 for (i = 0; i < fwspec->num_ids; i++) {
  struct qcom_iommu_ctx *ctx = to_ctx(fwspec, fwspec->ids[i]);
  unsigned int val, ret;

  iommu_writel(ctx, ARM_SMMU_CB_TLBSYNC, 0);

  ret = readl_poll_timeout(ctx->base + ARM_SMMU_CB_TLBSTATUS, val,
      (val & 0x1) == 0, 0, 5000000);
  if (ret)
   dev_err(ctx->dev, "timeout waiting for TLB SYNC\n");
 }
}
