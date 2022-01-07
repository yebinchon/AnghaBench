
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct qcom_iommu_ctx {int asid; int dev; int domain; } ;
typedef int irqreturn_t ;


 int ARM_SMMU_CB_FAR ;
 int ARM_SMMU_CB_FSR ;
 int ARM_SMMU_CB_FSYNR0 ;
 int ARM_SMMU_CB_RESUME ;
 int FSR_FAULT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RESUME_TERMINATE ;
 int dev_err_ratelimited (int ,char*,int,int ,int,int ) ;
 int iommu_readl (struct qcom_iommu_ctx*,int ) ;
 int iommu_readq (struct qcom_iommu_ctx*,int ) ;
 int iommu_writel (struct qcom_iommu_ctx*,int ,int) ;
 int report_iommu_fault (int ,int ,int ,int ) ;

__attribute__((used)) static irqreturn_t qcom_iommu_fault(int irq, void *dev)
{
 struct qcom_iommu_ctx *ctx = dev;
 u32 fsr, fsynr;
 u64 iova;

 fsr = iommu_readl(ctx, ARM_SMMU_CB_FSR);

 if (!(fsr & FSR_FAULT))
  return IRQ_NONE;

 fsynr = iommu_readl(ctx, ARM_SMMU_CB_FSYNR0);
 iova = iommu_readq(ctx, ARM_SMMU_CB_FAR);

 if (!report_iommu_fault(ctx->domain, ctx->dev, iova, 0)) {
  dev_err_ratelimited(ctx->dev,
        "Unhandled context fault: fsr=0x%x, "
        "iova=0x%016llx, fsynr=0x%x, cb=%d\n",
        fsr, iova, fsynr, ctx->asid);
 }

 iommu_writel(ctx, ARM_SMMU_CB_FSR, fsr);
 iommu_writel(ctx, ARM_SMMU_CB_RESUME, RESUME_TERMINATE);

 return IRQ_HANDLED;
}
