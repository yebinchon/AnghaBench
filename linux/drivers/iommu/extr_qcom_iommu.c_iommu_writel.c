
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_iommu_ctx {unsigned int base; } ;


 int writel_relaxed (int ,unsigned int) ;

__attribute__((used)) static inline void
iommu_writel(struct qcom_iommu_ctx *ctx, unsigned reg, u32 val)
{
 writel_relaxed(val, ctx->base + reg);
}
