
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qcom_iommu_ctx {unsigned int base; } ;


 int readl_relaxed (unsigned int) ;

__attribute__((used)) static inline u32
iommu_readl(struct qcom_iommu_ctx *ctx, unsigned reg)
{
 return readl_relaxed(ctx->base + reg);
}
